#include <iostream>
#include <cstdint>

using namespace std;



auto fact (uint32_t k ) -> uint32_t { uint32_t output=0; 
	uint32_t m = 1; 
	output = 1;
	
	while (m<k) { 
 		m = m + 1;
		output=output * m;

	}

return output; }



int main(){


cout<<"ans is :"<<fact(5)<<endl;



return 0;

}
