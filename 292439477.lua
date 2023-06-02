print("works")
CMDs[#CMDs + 1] = {NAME = 'phntm', DESC = 'Invite to the Infinite Yield support server.'}
reloadCMDS()
addcmd('phntm',{},function(args, speaker)
    notify('Welcome', 'Welcome to Phantom Forces')
end)
