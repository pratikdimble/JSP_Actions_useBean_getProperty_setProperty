# JSP_Actions_useBeans_getProperty_setProperty
***1. jsp:useBean  Finds or instantiates a JavaBean.   
***2. jsp:setProperty  Sets the property of a JavaBean. 
***3.  jsp:getProperty  Inserts the property of a JavaBean into the output.

**************************************************************************************************************************

# 1. The <jsp:useBean> Action
The useBean action is quite versatile. It first searches for an existing object utilizing the id and scope variables. If an object is not found, it then tries to create the specified object.

The simplest way to load a bean is as follows −

<jsp:useBean id = "name" class = "package.class" />
Once a bean class is loaded, you can use jsp:setProperty and jsp:getProperty actions to modify and retrieve the bean properties.

Following table lists out the attributes associated with the useBean action −

1	class----->Designates the full package name of the bean.

2	type ----.> Specifies the type of the variable that will refer to the object.

3	beanName ---> Gives the name of the bean as specified by the instantiate () method of the java.beans.Beans class.

**************************************************************************************************************************

# 2.The <jsp:setProperty> Action
The setProperty action sets the properties of a Bean. The Bean must have been previously defined before this action. There are two basic ways to use the setProperty action −

You can use jsp:setProperty after, but outside of a jsp:useBean element, as given below −

<jsp:useBean id = "myName" ... />
...
<jsp:setProperty name = "myName" property = "someProperty" .../>
In this case, the jsp:setProperty is executed regardless of whether a new bean was instantiated or an existing bean was found.

A second context in which jsp:setProperty can appear is inside the body of a jsp:useBean element, as given below −

<jsp:useBean id = "myName" ... >
   ...
   <jsp:setProperty name = "myName" property = "someProperty" .../>
</jsp:useBean>
Here, the jsp:setProperty is executed only if a new object was instantiated, not if an existing one was found.

Following table lists out the attributes associated with the setProperty action −

S.No.	Attribute & Description
1	name    Designates the bean the property of which will be set. The Bean must have been previously defined.

2	property    Indicates the property you want to set. A value of "*" means that all request parameters whose names match bean property names will be passed to the appropriate setter methods.

3	value   The value that is to be assigned to the given property. The the parameter's value is null, or the parameter does not exist, the setProperty action is ignored.

4	param   The param attribute is the name of the request parameter whose value the property is to receive. You can't use both value and param, but it is permissible to use neither.

**************************************************************************************************************************

# 3. The <jsp:getProperty> Action
The getProperty action is used to retrieve the value of a given property and converts it to a string, and finally inserts it into the output.

The getProperty action has only two attributes, both of which are required. The syntax of the getProperty action is as follows −

<jsp:useBean id = "myName" ... />
...
<jsp:getProperty name = "myName" property = "someProperty" .../>
Following table lists out the required attributes associated with the getProperty action −

S.No.	Attribute & Description
1	name    The name of the Bean that has a property to be retrieved. The Bean must have been previously defined.

2	property  The property attribute is the name of the Bean property to be retrieved.

Example
Let us define a test bean that will further be used in our example −

/* File: TestBean.java */
package action;
 
public class TestBean {
   private String message = "No message specified";
 
   public String getMessage() {
      return(message);
   }
   public void setMessage(String message) {
      this.message = message;
   }
}
**************************************************************************************************************************
