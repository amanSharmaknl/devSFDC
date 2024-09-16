public class QueueImpln {
    
    public QueueImpln(){
        
        Queue q = new Queue();
		q.enqueue('A');
        // System.debug('1.0 front is--- '+q.front);
        //System.debug('1.0 rear is----'+q.rear);
        System.debug('==========================');
		q.enqueue('B');
                System.debug('==========================');
        //System.debug('2.0...front is--- '+q.front);
        //System.debug('2.1...rear is----'+q.rear);
        q.enqueue('C');
                System.debug('==========================');
         //System.debug('3.0...front is--- '+q.front);
        //System.debug('3.1...rear is----'+q.rear);
         q.enqueue('D');
		/*q.dequeue();
		q.dequeue();
		q.enqueue(30);
		q.enqueue(40);
		q.enqueue(50);
		q.dequeue();*/
		System.debug('Queue Front : ' + ((q.front != null) ? (q.front).key : '-1'));
		System.debug('Queue Rear : ' + ((q.rear != null) ? (q.rear).key : '-1'));
    }
    class QNode 
    {
        String key;
        QNode next;
        // constructor to create a new linked list node
        public QNode(String key)
        {
            this.key = key;
            this.next = null;
        }
	}

    // A class to represent a queue
    // The queue, front stores the front node of LL and rear
    // stores the last node of LL
	class Queue 
    {
        QNode rear, front;
    
        public Queue() { this.front = null ;
                        this.rear = null; 
                       }

        // Method to add an key to the queue.
        void enqueue(String key)
        {
    
            // Create a new LL node
            QNode temp = new QNode(key);
    
            // If queue is empty, then new node is front and
            // rear both
            if (this.rear == null) {
                
                this.rear = temp;
                this.front = temp;
               
                System.debug('0.temp is --'+temp);
            	System.debug('0.front is --'+front);
            	System.debug('0.rear is --'+rear);
                return;
            }
    
            // Add the new node at the end of queue and change
            // rear
            System.debug('1.temp is --'+temp);
            System.debug('1.front is --'+front);
            System.debug('1.rear is --'+rear);
            
            this.rear.next = temp;
            System.debug('2.temp is --'+temp);
            System.debug('2.front is --'+front);
            System.debug('2.rear is --'+rear);
            this.rear = temp;
            System.debug('3.temp is --'+temp);
            System.debug('3.front is --'+front);
            System.debug('3.rear is --'+rear);
            
        }

        // Method to remove an key from queue.
        void dequeue()
        {
            // If queue is empty, return NULL.
            if (this.front == null)
                return;
    
            // Store previous front and move front one node
            // ahead
            QNode temp = this.front;
            this.front = this.front.next;
    
            // If front becomes NULL, then change rear also as
            // NULL
            if (this.front == null)
                this.rear = null;
        }
	}
    

}