def locator_type(locator):
	if locator.__contains__('xpath='):
		return "xpath"
	elif locator.__contains__('id='):
		return "id"
	elif locator.__contains__('name='):
		return "name"
	elif locator.__contains__('class='):
		return "class"
	elif locator.__contains__('tag='):
		return "tag"

def locator_strategy(locator):
	if locator.__contains__('xpath='):
		return locator.split("xpath=")[1]
	elif locator.__contains__('id='):
		return locator.split("id=")[1]
	elif locator.__contains__('name='):
		return locator.split("name=")[1]
	elif locator.__contains__('class='):
		return locator.split("class=")[1]
	elif locator.__contains__('tag='):
		return locator.split("tag=")[1]