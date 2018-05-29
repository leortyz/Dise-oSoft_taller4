public aspect TimeAspectJ{
	static long startTime;
    pointcut callgreeting():  call(* HelloAspectJDemo.greeting());
    before():callgreeting(){
    	startTime=System.nanoTime();
    	System.out.println("\nTime: "+startTime);
    }
    after(): callgreeting(){
        long estimatedTime=System.nanoTime()-startTime;
        System.out.println("\nTime: "+estimatedTime);    	
    }
}