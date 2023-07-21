trigger CaseTrigger on Case (before insert) {
  if(trigger.isBefore && trigger.isInsert) {
    CaseTriggerHandler.updateSubject(trigger.new);
  }
}