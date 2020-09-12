package examples.async;

class Main {
	static function main() {
		var test1 = new TestInterval();
		var test2 = new TestPromise();
		// todo:等待修复promise结合settimeout的bug
		// var test3 = new TestAwait();
	}
}
