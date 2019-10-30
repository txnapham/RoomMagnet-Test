using System;

public class Permission
{
    private int permissionID;

	public Permission(int permissionID)
	{
        setPermissionID(permissionID);
	}
    public void setPermissionID(int permissionID)
    {
        this.permissionID = permissionID;
    }
    public int getPermissionID()
    {
        return this.permissionID;
    }
}
