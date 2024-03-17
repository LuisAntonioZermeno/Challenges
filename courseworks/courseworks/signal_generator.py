import rclpy
import numpy as np
from rclpy.node import Node
from std_msgs.msg import Float32

class Signal(Node):
    def __init__(self):
        super().__init__('signal_node')
        self.publisher_signal = self.create_publisher(Float32, '/signal', 10)
        self.publisher_time = self.create_publisher(Float32, '/time', 10)
        timer_period = 0.1
        self.timer = self.create_timer(timer_period, self.timer_callback)
        self.get_logger().info('Signal generation successfully initialized!!!')
        self.msg_signal = Float32()
        self.msg_time = Float32()
        self.t = 0.0

    def timer_callback(self):
        self.msg_signal.data = np.sin(self.t)
        self.publisher_signal.publish(self.msg_signal)

        self.msg_time.data = self.t
        self.publisher_time.publish(self.msg_time)

        self.get_logger().info("Time: %f, Signal: %f" % (self.msg_time.data, self.msg_signal.data))
        self.t += 0.1

def main(args=None):
    rclpy.init(args=args)
    m_p = Signal()
    rclpy.spin(m_p)
    m_p.destroy_node()
    rclpy.shutdown()
    

if __name__ == '__main__':
    main()
