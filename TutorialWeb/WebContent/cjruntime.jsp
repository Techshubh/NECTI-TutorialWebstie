<%@ include file="header.jsp" %>

		<img src="images/runtime.jpg" alt="Buildings" style="height:370px;width:100%"/>

		<div id="body">
			 <section id="content">

        <article>
        <h2>Difference between JDK, JRE, and JVM</h2>

            <p>We must understand the differences between JDK, JRE, and JVM before proceeding further to Java. See the brief overview of JVM here.<br>
            If you want to get the detailed knowledge of Java Virtual Machine, move to the next page. Firstly, let's see the differences between the JDK, JRE, and JVM.</p>
            
            <hr>
            <p>&nbsp;</p>

            
            <h3>JVM</h3>
            <p>JVM (Java Virtual Machine) is an abstract machine. It is called a virtual machine because it doesn't physically exist. It is a specification that provides a runtime environment in which Java bytecode can be executed. It can also run those programs which are written in other languages and compiled to Java bytecode.<br>
            JVMs are available for many hardware and software platforms. JVM, JRE, and JDK are platform dependent because the configuration of each OS is different from each other. However, Java is platform independent. There are three notions of the JVM: specification, implementation, and instance.</p>

            <p>The JVM performs the following main tasks:</p>
            <ui>
                <li>Loads Code</li>
                <li>Verifies code</li>
                <li>Execute code</li>
                <li>Provides runtime environment.</li>

            </ui>
            <hr>
            <h3>JRE</h3>
            <p>JRE is an acronym for Java Runtime Environment. It is also written as Java RTE. The Java Runtime Environment is a set of software tools which are used for developing Java applications. It is used to provide the runtime environment. It is the implementation of JVM. It physically exists. It contains a set of libraries + other files that JVM uses at runtime.<br>
            The implementation of JVM is also actively released by other companies besides Sun Micro Systems.</p>
            <div class="content_image"><img src="images/jre.png" width="100%" height="100%"></div>
            <hr>
            <h3>JDK</h3>
            <p>JDK is an acronym for Java Development Kit. The Java Development Kit (JDK) is a software development environment which is used to develop Java applications and applets. It physically exists. It contains JRE + development tools.<br>
            JDK is an implementation of any one of the below given Java Platforms released by Oracle Corporation:</p>
            <ul>
                <li>Standard Edition Java Platform</li>
                <li>Enterprise Edition Java Platform</li>
                <li>Micro Edition Java Platform</li>
            </ul>
            <p>The JDK contains a private Java Virtual Machine (JVM) and a few other resources such as an interpreter/loader (java), a compiler (javac), an archiver (jar), a documentation generator (Javadoc), etc. to complete the development of a Java Application.</p>
            <div class="container_image"><img src="images/jdk.png" width="100%" height="100%"></div>
            
            <div class="video">
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/R6SAY-uWdzo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
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