a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"多叉树转二叉树";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1972:"
#include <stdio.h>
#include <stdlib.h>

typedef struct TreeNode
{
     int child_count;
     int data;
     struct TreeNode *child[3];
}TreeNode_t;
typedef struct BinaryTreeNode
{
     int data;
     struct BinaryTreeNode *leftchild;
     struct BinaryTreeNode *rightchild;
}BinaryTreeNode_t;

BinaryTreeNode_t *toBinaryTree(TreeNode_t *root);
void InOrderTraverse(BinaryTreeNode_t *T,int level);
int main(int argc,char *argv[])
{
     int i = 0, level = 0;
     TreeNode_t *root=NULL;
     BinaryTreeNode_t *p=NULL;
     root = (TreeNode_t *)malloc(sizeof(TreeNode_t));
     root->data = 3;
     root->child_count = 3;
    
     for(i=0;i<root->child_count; i++)
     {
          root->child[i] = (TreeNode_t *)malloc(sizeof(TreeNode_t));
          root->child[i]->child_count = 0;
          root->child[i]->data = i;
     }
    
     p = toBinaryTree(root);
     InOrderTraverse(p,level);
    
     return 0;
}

BinaryTreeNode_t *toBinaryTree(TreeNode_t *root)
{
     int i = 0;
     if(root == NULL)
     {
          return NULL;
     }
    
     BinaryTreeNode_t *binaryRoot = (BinaryTreeNode_t *)malloc(sizeof(BinaryTreeNode_t));
     binaryRoot->leftchild = binaryRoot->rightchild=NULL;
    
     binaryRoot->data = root->data;
     //将多叉树的第一个孩子变为二叉树的左孩子（递归）
     binaryRoot->leftchild = toBinaryTree(root->child[0]);
     BinaryTreeNode_t* brother = binaryRoot->leftchild;
    
     for(i = 1; i < root->child_count;i++)
     {  
          brother->rightchild = toBinaryTree(root->child[i]);
          brother = brother->rightchild;  
     }  
    
     return binaryRoot;
}


void InOrderTraverse(BinaryTreeNode_t *T,int level)
{
    if(T)
     {   /*递归结束条件，T为空*/
        InOrderTraverse(T->leftchild,level+1);  /*先序遍历T的左子树*/
          printf("node: %d, level: %d\n",T->data,level);
        InOrderTraverse(T->rightchild,level+1);  /*先序遍历T的右子数*/
    }
     return;
}
";i:1;s:1:"c";i:2;N;}i:2;i:41;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2023;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2023;}}