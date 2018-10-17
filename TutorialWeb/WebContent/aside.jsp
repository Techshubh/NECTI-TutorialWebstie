
<aside class="sidebar" id="side">

				<ul>
					<li>
						<h4>Categories</h4>
						<ul>
							<li>
								<a href="cj.jsp">Core Java</a>
								<ul>
									<li><a href="cjruntime.jsp">Java Runtime</a></li>
									<li><a href="cjhelloworld.jsp">Java HelloWorld</a></li>
								</ul>
							</li>
							<li>
								<a href="hibernatehome.jsp">Hibernate</a>
								<ul>
									
									<li>
										<a href="hibernateexample.jsp">Hibernate Example</a>
									</li>
								</ul>
							</li>
							<li><a href="springhome.jsp">Spring</a>
									<ul>
									
									<li>
										<a href="springexample.jsp">Spring Example</a>
									</li>
								</ul>
							
							</li>
							
						</ul>
					</li>

					<li>
						<h4>About us</h4>
						<ul>
							<li class="text">
								<p style="margin: 0;">
									NEC considers Digital Transformation as not just a trend but a movement with a strong enough influence to change the industrial structure.  <a
										href="about.jsp" class="readmore">Read More &raquo;</a>
								</p>
							</li>
						</ul>
					</li>

					

				</ul>
				<div id="username" style="visibility: hidden;"><%out.print(session.getAttribute("username"));%></div>
			<div id="email" style="visibility: hidden;"><%out.print(session.getAttribute("username")+"@india.nec.com");%></div>
			<div id="topic" style="visibility: hidden;">
				<% String uri=request.getRequestURI();
						String topic=(uri.split("/")[uri.split("/").length - 1]).split("\\.")[0];
						out.print(topic);
					
					%>
			</div>

			</aside>