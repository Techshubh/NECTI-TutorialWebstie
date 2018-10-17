

public class ex4 {

public static void main(String args[])
{
	int a[][]={{1,3},{3,4,5}};
	int b[][]={{1,3,4},{3,4,5}};
	int c[][]=new int[3][3];
for(int i=0;i<2;i++)
{
	for(int j=0;j<3;j++)
	{
		if(!(i==0&&j==2))
			c[i][j]=a[i][j]+b[i][j];
		else
			c[i][j]=b[i][j];
	}
}
for(int i=0;i<2;i++)
{
	for(int j=0;j<3;j++)
		System.out.print(c[i][j]+" ");
	System.out.println();
}
}
}

