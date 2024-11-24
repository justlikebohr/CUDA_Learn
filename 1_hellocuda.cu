#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>

__global__ void hello_cuda() {
	unsigned int idx = blockIdx.x * blockDim.x + threadIdx.x;  //具体某个线程id
	printf("blockDim = [ %d ] block id = [ %d ], thread id = [ %d ] hello cuda\n", blockDim, blockIdx.x, idx);
}

int main() {
	hello_cuda<<< 1, 1 >>>();
	cudaDeviceSynchronize();
	return 0;
}
