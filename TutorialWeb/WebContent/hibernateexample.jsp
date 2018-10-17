<%@ include file="header.jsp" %>
<link href="styles.css" rel="stylesheet" />

		<img src="images/hibernate.jpg" alt="Buildings" style="height:370px;width:100%"/>

		<div id="body">
			 <section id="content">

	    <article>
	   <h2>Hibernate Example using Annotation</h2>

            <p>The hibernate application can be created with annotation. There are many annotations that can be used to create hibernate application such as @Entity, @Id, @Table etc.<br>Hibernate Annotations are based on the JPA 2 specification and supports all the features.<br>All the JPA annotations are defined in the javax.persistence package. Hibernate EntityManager implements the interfaces and life cycle defined by the JPA specification.<br>The core advantage of using hibernate annotation is that you don't need to create mapping (hbm) file. Here, hibernate annotations are used to provide the meta data.</p>
            
            
            <p>&nbsp;</p>

            <ol>
                <li>
                <h3>Create the Persistence class.</h3>
                <p>Here, we are creating the same persistent class which we have created in the previous topic. But here, we are using annotation.<br><strong>@Entity</strong> annotation marks this class as an entity.<br>@Table annotation specifies the table name where data of this entity is to be persisted. If you don't use<br><strong> @Table </strong>annotation, hibernate will use the class name as the table name by default.<br><strong>@Id</strong> annotation marks the identifier for this entity.<br><strong>@Column </strong>annotation specifies the details of the column for this property or field.<br> If <strong>@Column </strong>annotation is not specified, property name will be used as the column name by default.<br>To create the Persistence class, right click on src/main/java - New - Class - specify the class name with package - finish.</p>
                <h4>Employee.java</h4>
                <script src="https://gist.github.com/DheerendraKr/6d74d1e76350baed14bcd15946c2d9f9.js"></script>
                </li>
                <li>
                    <h3>Create the Configuration file</h3>
                    <p>To create the configuration file, right click on src/main/java - new - file - specify the file name (e.g. hibernate.cfg.xml) - Finish.</p>
                    <h4>hibernate.cfg.xml</h4>
                    <script src="https://gist.github.com/DheerendraKr/b9841902de4732c0058f53b986ad3228.js"></script>
                </li>
                <li>
                    <h3>Create the class that retrieves or stores the persistent object.</h3>
                    <h4>StoreData.java</h4>
                    <script src="https://gist.github.com/DheerendraKr/707d789139feb9a914ed49dd3c92ad7f.js"></script>
                </li>
            </ol>

            <p>&nbsp;</p>
            <h3>ORM Tool</h3>
            <p>An ORM tool simplifies the data creation, data manipulation and data access. It is a programming technique that maps the object to the data stored in the database.</p>


            <p>&nbsp;</p> 
            <div class="video">
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/onS9G0zpQwA?list=PLBgMUB7xGcO0cujAlaeDDEOdZkeNZUScM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
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