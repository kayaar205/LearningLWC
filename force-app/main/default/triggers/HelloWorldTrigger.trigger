trigger HelloWorldTrigger on Account (before insert) {
		for (Account a : Trigger.new)
        {
            a.description = 'New Description';
        }
}