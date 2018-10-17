<%@ include file="header.jsp" %>
<link href="styles.css" rel="stylesheet" />

		<img src="images/spring.png" alt="Buildings" style="height:370px;width:100%"/>

		<div id="body">
			 <section id="content">

	    <article>
	    <h2>Spring Example</h2>

            <p>Here, we are going to learn the simple steps to create the first spring application. To run this application, we are not using any IDE. We are simply using the command prompt. Let's see the simple steps to create the spring application </p>
            <ul>
                <li>create the class</li>
                <li>create the xml file to provide the value</li>
                <li>create the test class</li>
                <li>load the spring jar file</li>
                <li>run the test class</li>
            </ul>
            <hr>
            
            <p>&nbsp;</p>

            
            <h3>Steps to create spring application </h3>
            <p>Let's see the 5 steps to create the first spring application.</p>
            <ol>
                <li>
                    <h4>create the java class</h4>
                    <p>This is the simple java bean class containing the name property only. </p>
                    <script src="https://gist.github.com/DheerendraKr/7176efa3ed3de8004b418675a37e8ff6.js"></script>
                    <p>This is simple bean class, containing only one property name with its getters and setters method. This class contains one extra method named displayInfo() that prints the student name by the hello message.</p>
                </li>
                <li>
                    <h4>create the xml file</h4>
                    <p>In case of myeclipse IDE, you don't need to create the xml file as myeclipse does this for yourselves. Open the applicationContext.xml file, and write the following code:</p>
                    <script src="https://gist.github.com/DheerendraKr/83081b02d160c57ee2dcbfa2edf92843.js"></script>
                    <p>The bean element is used to define the bean for the given class. The property subelement of bean specifies the property of the Student class named name. The value specified in the property element will be set in the Student class object by the IOC container. </p>
                </li>
                <li>
                    <h4> Create the test class</h4>
                    <p>Create the java class e.g. Test. Here we are getting the object of Student class from the IOC container using the getBean() method of BeanFactory. Let's see the code of test class. </p>
                    <script src="https://gist.github.com/DheerendraKr/648b4836bf8708811910b910b0ee6700.js"></script>
                    <p>The Resource object represents the information of applicationContext.xml file. The Resource is the interface and the ClassPathResource is the implementation class of the Reource interface. The BeanFactory is responsible to return the bean. The XmlBeanFactory is the implementation class of the BeanFactory. There are many methods in the BeanFactory interface. One method is getBean(), which returns the object of the associated class. </p>

                </li>
                <li>
                    <h4>Load the jar files required for spring framework</h4>
                    <p>There are mainly three jar files required to run this application.</p>
                    <ul>
                        <li>org.springframework.core-3.0.1.RELEASE-A</li>
                        <li>com.springsource.org.apache.commons.logging-1.1.1</li>
                        <li>org.springframework.beans-3.0.1.RELEASE-A</li>

                    </ul>

                </li>
                <li>
                    <h4>Run the test Class</h4>
                    <p></p>

                </li>
            </ol>
            <div class="video">
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/Zkm2n_GxV9U" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            </div>
           
            
           </article> 
      		
        </section>

			<%@ include file="aside.jsp" %>
			<div class="clear"></div>
		</div>
		<%@ include file="feedback.jsp"%>
		<%@ include file="footer.jsp" %>
</div>
</body>
</html>