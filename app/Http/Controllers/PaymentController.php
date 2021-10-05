<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PaymentController extends Controller
{
    public function success(Request $request)
    {
        $data = $request->all();
        if ($request->input('orderId')) {
            $cashfree = config()->get('cashfree');
            $secretKey = $cashfree['secretKey'];
            $orderId = $request->input('orderId');
            $appointmentId = $request->input('appointment_id');
            $orderAmount = $request->input('orderAmount');
            $referenceId = $request->input('referenceId');
            $txStatus = $request->input('txStatus');
            $paymentMode = $request->input('paymentMode');
            $txMsg = $request->input('txMsg');
            $txTime = $request->input('txTime');
            $signature = $request->input('signature');
            $data = $orderId . $orderAmount . $referenceId . $txStatus . $paymentMode . $txMsg . $txTime . $appointmentId;
            $hash_hmac = hash_hmac('sha256', $data, $secretKey, true);
            $computedSignature = base64_encode($hash_hmac);
            if ($signature == $computedSignature) {
                $payment = [
                    'order_id' => $request->input('orderId'),
                    'order_amount' => $request->input('orderAmount'),
                    'reference_id' => $request->input('referenceId'),
                    'txstatus' => $request->input('txStatus'),
                    'payment_mode' => $request->input('paymentMode'),
                    'txmsg' => $request->input('txMsg'),
                    'txtime' => $request->input('txMsg'),
                    'sign' => $request->input('signature'),
                    'created_at' => date("Y-m-d H:i:s"),
                    'updated_at' => date("Y-m-d H:i:s"),
                    'appointment_id' => str_replace($cashfree['orderPrefix'], '', $request->input('orderId')),
                ];
                DB::table('payments')->insert($payment);

                $order = Order::findOrFail(str_replace($cashfree['orderPrefix'], '', $request->input('orderId')));

                $order->status = ($txStatus == 'SUCCESS') ? 1 : 2;
                $order->save();
            }
            if ($order->status == 2) {
                return redirect()->back();
            }
            return redirect('thankyou')->with(['order_id' => $payment['order_id'], 'order' => $order]);
        }
    }
}
