trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    
    List<Task> taskLst = new List<Task>();
    
    for(Opportunity op : [SELECT Id FROM Opportunity WHERE StageName ='Closed Won' AND Id IN :Trigger.New]){
        Task tk = new Task();
        tk.Subject  = 'Follow Up Test Task';
        tk.WhatId   = op.Id;
        taskLst.add(tk);
    }
    
    if(taskLst.size() > 0){
        insert taskLst;
    }
}