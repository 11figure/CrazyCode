package thread;

import java.util.concurrent.locks.Lock;

/**
 * 可以看到线程名称成对输出，也就是在同一时刻只有两个线程能够获
	取到锁，这表明TwinsLock可以按照预期正确工作。
 * @author wangzequan
 *
 */
public class TwinsLockTest {
	public void test() throws InterruptedException {
		final Lock lock = new TwinsLock();
		class Worker extends Thread {
			public void run() {
				while (true) {
					lock.lock();
					try {
						Thread.sleep(100);
						System.out.println(Thread.currentThread().getName());
						Thread.sleep(100);
					} catch (InterruptedException e) {
						e.printStackTrace();
					} finally {
						lock.unlock();
					}
				}
			}
		}
		// 启动10个线程
		for (int i = 0; i < 10; i++) {
			Worker w = new Worker();
			System.out.println("name : "+w.getName());
			w.setDaemon(true);
			w.start();
		}
		// 每隔1秒换行
		for (int i = 0; i < 10; i++) {
			Thread.sleep(100);
			System.out.println();
		}
	}
	public static void main(String[] args) throws InterruptedException {
		TwinsLockTest tt = new TwinsLockTest();
		tt.test();
	}
}