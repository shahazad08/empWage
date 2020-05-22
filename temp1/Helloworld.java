class Helloworld {
   public static void main(String[] argv) {
      while(true) {
         System.out.println("Java Thread Running");
         try {
            Thread.sleep(60000);
         }catch(Exception ex) {System.out.println(ex);}

      }
   }
}
