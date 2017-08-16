CXX = g++
INCLUDES= -I./
CXXFLAGS = -g $(INCLUDES)
SRCM= ../BasicM.cpp
OBJM = $(SRCM:.cpp=.o)
LINKFLAGS= -lcppunit

testbasicmath: TestBasicM.cpp $(OBJM)
	$(CXX) $(CXXFLAGS) -o $@ TestBasicM.cpp $(OBJM) $(LINKFLAGS) $(LINKFLAGSLOG4) $(LIBLOG)

# Default compile

.cpp.o:
	$(CXX) $(CXXFLAGS) -c $< -o $@

