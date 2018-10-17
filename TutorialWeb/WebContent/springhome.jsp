<%@ include file="header.jsp" %>
<link href="styles.css" rel="stylesheet" />
		<img src="images/spring.png" alt="Buildings" style="height:370px;width:100%"/>

		<div id="body">
			 <section id="content">

	    <article>
	     <h2>Spring Tutorial</h2>

            <p>This spring tutorial provides in-depth concepts of Spring Framework with simplified examples. It was developed by Rod Johnson in 2003. Spring framework makes the easy development of JavaEE application. </p>
            
            
            <p>&nbsp;</p>

            
            <h3>Spring Framework</h3>
            <p>Spring is a lightweight framework. It can be thought of as a framework of frameworks because it provides support to various frameworks such as Struts, Hibernate, Tapestry, EJB, JSF etc. The framework, in broader sense, can be defined as a structure where we find solution of the various technical problems.</p>

            <hr>
            <h3>Inversion Of Control (IOC) and Dependency Injection</h3>
            <p>These are the design patterns that are used to remove dependency from the programming code. They make the code easier to test and maintain. Let's understand this with the following code:</p>
            <script src="https://gist.github.com/DheerendraKr/65627169e033ddb1db995338d4850042.js"></script>
            <p>In such case, there is dependency between the Employee and Address (tight coupling). In the Inversion of Control scenario, we do this something like this: </p>
            <script src="https://gist.github.com/DheerendraKr/1b5dfd1bd3bbde171d1968201f7b1d45.js"></script>
            <p>Thus, IOC makes the code loosely coupled. In such case, there is no need to modify the code if our logic is moved to new environment.<br>In Spring framework, IOC container is 
            responsible to inject the dependency. We provide metadata to the IOC container either by XML file or annotation.</p>

            <h3>Advantages of Spring Framework</h3>
            <ol>
                <li> Predefined Templates</li>
                <li> Loose Coupling</li>
                <li> Easy to test</li>
                <li> Lightweight</li>
            </ol>
            <p>&nbsp;</p>          
           


            
            <div class="video">
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/GB8k2-Egfv0?list=PLC97BDEFDCDD169D7" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
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