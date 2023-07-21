trigger ContactTrigger on Contact (after insert) {
  if (trigger.isAfter && trigger.isInsert) {
    ContactTriggerHandler.createNewCase(trigger.new, trigger.oldMap);
  }
}