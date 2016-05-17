global class scheduledBatchable implements Schedulable {
   global void execute(SchedulableContext sc) {
      CustomerProessingBatch objClass = new CustomerProessingBatch();
Database.executeBatch (objClass);
   }
}