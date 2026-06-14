//implementing static and dynamic memory allocation
#include <iostream>

/* We want to show the following:
 * - basic array usage (in main function)
 * - use pointers with arrays (function to access array elements)
 * - use dynamic memory allocation with objects and classes */

//function prototypes (defined after main function)
void userInput(int &newSize);
void storeToArray(int arr[], size_t size);
void displayAllArr(int arr[], size_t size);
int recursiveSum(int *arr, size_t size);

//change manually to adjust the size of the container class' elements
const int cSize = 3;

//class definition
class container{
private:
    int arr[cSize];
public:
    container();
    void displayAll();
    int sumofAll(int nTerms);
    /* inside here the students must create the big 3:
     * destructor
     * copy constructor
     * copy assignment
     * uncomment to make the big 3 work
    ~container(){
        std::cout << "Destructor called" << std::endl;
    }
    container(const container &copyContainer){
        std::cout << "Copy constructor called" << std::endl;
        for(int i = 0; i < cSize; i++){
            arr[i] = copyContainer.arr[i];
        }
    }
    container &operator=(const container &copy){
        std::cout << "Copy Assignment operator called." << std::endl;
        return *this;
    }
     */
};

//constructor
container::container(){
    for(int i = 0; i < cSize; i++){
        std::cout << "Constructor called." << std::endl;
        std::cout << "Element " << i+1 << ": ";
        std::cin >> this->arr[i];
    }
    std::cout << std::endl;
}

//function to display
void container::displayAll() {
    for(int i = 0; i < cSize; i++){
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;
}

//function to sum
int container::sumofAll(int nTerms){
    if(--nTerms>=cSize){
        throw std::invalid_argument("Number of terms cannot be greater than max element index.");
    }

    int sumReturn = 0;
    for(int i = 0; i <= nTerms; i++){
        sumReturn += arr[i];
    }
    std::cout << std::endl << "The sum is ";
    return sumReturn;
}

int main(){
    //driver for the function prototypes above
    int arrSize;
    userInput(arrSize);
    int arr[arrSize];
    storeToArray(arr, arrSize);
    displayAllArr(arr,arrSize);
    std::cout << "The Sum of the Values: " << recursiveSum(arr, arrSize) << std::endl;

    //driver for the container class section of the code
    container cont1;
    cont1.displayAll();
    std::cout << cont1.sumofAll(3) << std::endl;

    int numContainers = 0;
    std::cout << "How many containers to make : " << std::endl;
    std::cin >> numContainers;

    container *arrCont[numContainers];
    for(int i = 0; i < numContainers; i++){
        arrCont[i] = new container;
    }

    //perform all functions on allocated containers
    for(int j = 0; j < numContainers; j++){
        arrCont[j]->displayAll();
        std::cout << arrCont[j]->sumofAll(3) << std::endl;
    }

    //observe the absence of the destructors until you uncomment the above portion in the class definition

    return 0;
}

//change the variable value for size of the array
void userInput(int &newSize){
    std::cout << "Input Array Size: ";
    std::cin >> newSize;
}

//store elements in array
void storeToArray(int arr[], size_t size){
    int i = 0;
    std::cout << "Input Array Elements: " << std::endl;
    while(i<size){
        std::cout << "Element " << i+1 << ":";
        std::cin >> arr[i];
        i++;
    }
}

//display all elements in array
void displayAllArr(int arr[], size_t size){
    while(size!=0){
        std::cout << *arr++ << " ";
        size--;
    }
    std::cout << std::endl;
}

//get the sum with a recursive function
int recursiveSum(int *arr, size_t size) {
    if(size==0){
        return 0;
    }
    return *arr + recursiveSum(++arr, --size);
}