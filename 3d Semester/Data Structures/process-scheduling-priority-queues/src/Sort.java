class Sort
{
    static void HeapSort(Job jobs[]){
            int n = jobs.length - 1;
    
            for (int i = (n -1)/ 2; i >= 1; i--) {
                sink(jobs, n, i);
            }
    
            for (int i = n; i > 1; i--) {
                Job temp = jobs[1];
                jobs[1] = jobs[i];
                jobs[i] = temp;
    
                sink(jobs, i, 1);
            }
    }
    
    static private void sink(Job[] jobs, int n, int i) {
            int largest = i; 
            int left = 2 * i;
            int right = 2 * i + 1;
    
            if (left < n && jobs[left].compareTo(jobs[largest])>0) {
                largest = left;
            }
    
            if (right < n && jobs[right].compareTo(jobs[largest])>0) {
                largest = right;
            }
    
            if (largest != i) {
                Job temp = jobs[i];
                jobs[i] = jobs[largest];
                jobs[largest] = temp;
    
                sink(jobs, n, largest);
            }
    }
}