CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lwlroots
VK_LAYER_PATH=$(VULKAN_SDK_PATH)/etc/eplicit_layer.d

HelloTriangleApplication: main.cpp
	g++ $(CFLAGS) -o HelloTriangleApplication main.cpp $(LDFLAGS)

debug: main.cpp
	g++ $(CFLAGS) -o HelloTriangleApplication main.cpp $(LDFLAGS)

.PHONY: test clean

test: HelloTriangleApplication
	./HelloTriangleApplication

clean:
	rm -f HelloTriangleApplication
