public aspect Time{
	static long startTime;
    pointcut callgreeting():  call(* HelloAspectJDemo.greeting());
    before():callgreeting(){
    	startTime=System.currentTimeMillis();
    	System.out.println("Time: "+startTime);
    }
    after(): callgreeting(){
        long estimatedTime=System.currentTimeMillis()-startTime;
        System.out.println("Time: "+estimatedTime);    	
    }
}