#include <unistd.h> //includes unix standard libraries
#include <stdio.h> //includes functions like printf(), scanf()
#include <fcntl.h> //includes open() method

int main()
{
	//variable declaration
	int fd;
	char msg[40] = "Hello, world"; //holds message to write
	char buffer[100]; //holds the read value from the file
	fd = open("intro.txt", O_RDWR); //Opens a file with both read and write permissions

	printf("fd = %d ", fd);//print the descriptor

	if (fd != -1)
	{
		printf("\n intro.txt opened with read write access ");
		write(fd, msg, sizeof(msg)); //write the message to the file
		lseek(fd, 0, SEEK_SET); //moves the file cursor to beginning of file
		read(fd, buffer, sizeof(msg)); //reads the content of the file
		printf("\n %s was written to my file \n ", buffer); //prints the contents that was read from the file
		close(fd); //closes the file
	}
	return (0);
}	
