#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

void create_process_tree(int max_depth, int depth, pid_t parent_id)
{
    if (depth >= max_depth)
    {
        return;
    }

    pid_t child_id = fork();
    if (child_id == 0)
    {
        printf("Child with id: %d and its Parent id: %d\n", getpid(), parent_id);
        create_process_tree(max_depth, depth + 1, getpid());
    }
    if (child_id > 0)
    {
        create_process_tree(max_depth, depth + 1, parent_id);
    }
}

int main()
{
    printf("Parent of all: %d\n", getpid());
    create_process_tree(3, 0, getpid()); // max_depth depth

    return 0;
}
