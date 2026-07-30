#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/types.h>
#include<sys/wait.h>
int main(){
pid_t pid;
pid=fork();
if(pid==0){
printf("Child executing is command\n");
execl("/bin/ls","ls","-l",NULL);
}
else{
printf("parent waiting..\n");
wait(NULL);
printf("Child finished execution\n");
}
return 0;
}
