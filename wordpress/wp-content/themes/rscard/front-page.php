<?php get_header(); ?>
<?php get_sidebar(); ?>
<div class="content">
            <div class="container">
				<!-- START: PAGE CONTENT -->
				<section id="about" class="section section-about">
					<div class="animate-up">
						<div class="section-box">
							<div class="profile">
								<?php $info = get_field('info');?>
								<div class="row">
									<div class="col-xs-5">
										<div class="profile-photo"><img src="<?php echo $info['image'];?>" alt="Robert Smith"/></div>
									</div>
									<div class="col-xs-7">
										<div class="profile-info">
											<div class="profile-preword"><span>Hello</span></div>
											<h1 class="profile-title"><span>I'm</span> <?php echo $info['name'];?></h1>
											<h2 class="profile-position"><?php echo $info['work'];?></h2></div>
                                            <ul class="profile-list">
                                                <li class="clearfix">
                                                    <strong class="title">Age</strong>
                                                    <span class="cont"><?php echo $info['age'];?></span>
                                                </li>
                                                <li class="clearfix">
                                                    <strong class="title">Address</strong>
                                                    <span class="cont"><?php echo $info['adress'];?></span>
                                                </li>
                                                <li class="clearfix">
                                                    <strong class="title">E-mail</strong>
                                                    <span class="cont"><a href="mailto:<?php echo $info['email'];?>"><?php echo $info['email'];?></a></span>
                                                </li>
                                                <li class="clearfix">
                                                    <strong class="title">Phone</strong>
                                                    <span class="cont"><a href="tel:<?php echo $info['phone'];?>"><?php echo $info['phone'];?></a></span>
                                                </li>
                                                <li class="clearfix">
                                                    <strong class="title">Freelance</strong>
                                                    <span class="cont">till <?php echo $info['freelance'];?></span>
                                                </li>
                                                <li class="clearfix">
                                                    <strong class="title"><span class="button"><?php echo $info['vacation_or_not'];?></span></strong>
                                                    <span class="cont"><i class="rsicon rsicon-calendar"></i>till <?php echo $info['vacation'];?></span>
                                                </li>
                                            </ul>
									</div>
								</div>
							</div>
							<div class="profile-social">
								<ul class="social">
									<li><a class="ripple-centered" href="https://www.facebook.com/" target="_blank"><i class="rsicon rsicon-facebook"></i></a></li>
									<li><a class="ripple-centered" href="https://twitter.com" target="_blank"><i class="rsicon rsicon-twitter"></i></a></li>
									<li><a class="ripple-centered" href="https://www.linkedin.com" target="_blank"><i class="rsicon rsicon-linkedin"></i></a></li>
									<li><a class="ripple-centered" href="https://plus.google.com" target="_blank"><i class="rsicon rsicon-google-plus"></i></a></li>
									<li><a class="ripple-centered" href="https://dribbble.com" target="_blank"><i class="rsicon rsicon-dribbble"></i></a></li>
									<li><a class="ripple-centered" href="https://www.instagram.com" target="_blank"><i class="rsicon rsicon-instagram"></i></a></li>
								</ul>
							</div>
						</div>

                        <div class="section-txt-btn">
                            <p><a class="btn btn-lg btn-border ripple" target="_blank" href="<?php echo $info['download'];?>">Download Resume</a></p>
                            <p><?php echo $info['description'];?></p>
                        </div>
					</div>	
				</section><!-- #about -->
				<?php $skills = get_field('skills');?>					
				<section id="skills" class="section section-skills">
					<div class="animate-up">
						<h2 class="section-title">Professional  Skills</h2>
						<div class="section-box">
							<div class="row">						
								<div class="col-sm-6">
									<div class="progress-bar">
										<div class="bar-data">
											<span class="bar-title"><?php echo $skills['skills1']['name'];?></span>
											<span class="bar-value"><?php echo $skills['skills1']['percentage'];?>%</span>
										</div>
										<div class="bar-line">
											<span class="bar-fill" data-width="<?php echo $skills['skills1']['percentage'];?>%"></span>
										</div>
									</div>
								</div>
								
								<div class="col-sm-6">
									<div class="progress-bar">
										<div class="bar-data">
											<span class="bar-title"><?php echo $skills['skills2']['name'];?></span>
											<span class="bar-value"><?php echo $skills['skills2']['percentage'];?>%</span>
										</div>
										<div class="bar-line">
											<span class="bar-fill" data-width="<?php echo $skills['skills2']['percentage'];?>%"></span>
										</div>
									</div>
								</div>
							</div>
							
							<div class="row">							
							<div class="col-sm-6">
									<div class="progress-bar">
										<div class="bar-data">
											<span class="bar-title"><?php echo $skills['skills3']['name'];?></span>
											<span class="bar-value"><?php echo $skills['skills3']['percentage'];?>%</span>
										</div>
										<div class="bar-line">
											<span class="bar-fill" data-width="<?php echo $skills['skills3']['percentage'];?>%"></span>
										</div>
									</div>
								</div>
								
								<div class="col-sm-6">
									<div class="progress-bar">
										<div class="bar-data">
											<span class="bar-title"><?php echo $skills['skills4']['name'];?></span>
											<span class="bar-value"><?php echo $skills['skills4']['percentage'];?>%</span>
										</div>
										<div class="bar-line">
											<span class="bar-fill" data-width="<?php echo $skills['skills4']['percentage'];?>%"></span>
										</div>
									</div>
								</div>
							</div>
							
							<div class="row">							
							<div class="col-sm-6">
									<div class="progress-bar">
										<div class="bar-data">
											<span class="bar-title"><?php echo $skills['skills5']['name'];?></span>
											<span class="bar-value"><?php echo $skills['skills5']['percentage'];?>%</span>
										</div>
										<div class="bar-line">
											<span class="bar-fill" data-width="<?php echo $skills['skills5']['percentage'];?>%"></span>
										</div>
									</div>
								</div>
								
								<div class="col-sm-6">
									<div class="progress-bar">
										<div class="bar-data">
											<span class="bar-title"><?php echo $skills['skills6']['name'];?></span>
											<span class="bar-value"><?php echo $skills['skills6']['percentage'];?>%</span>
										</div>
										<div class="bar-line">
											<span class="bar-fill" data-width="<?php echo $skills['skills6']['percentage'];?>%"></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>	
				</section><!-- #skills -->
                
				<section id="portfolio" class="section section-portfolio">
					<div class="animate-up">
						<h2 class="section-title">Portfolio</h2>

						<div class="filter">
							<div class="filter-inner">
								<div class="filter-btn-group">
									<button data-filter="*">All</button>
									<button data-filter=".photography">Photography</button>
									<button data-filter=".nature">Nature</button>
								</div>
								<div class="filter-bar">
									<span class="filter-bar-line"></span>
								</div>
							</div>
						</div>

						<div class="grid">
							<div class="grid-sizer"></div>
							
							<div class="grid-item size22 photography">
								<div class="grid-box">
									<figure class="portfolio-figure">
										<img src="<?php bloginfo('template_directory');?>/img/uploads/portfolio/portfolio-thumb-05-610x600.jpg" alt=""/>
										<figcaption class="portfolio-caption">
											<div class="portfolio-caption-inner">
												<h3 class="portfolio-title">Street Photography</h3>
												<h4 class="portfolio-cat">Photography</h4>

												<div class="btn-group">
													<a class="btn-link" href="http://bit.ly/1YtB8he" target="_blank"><i class="rsicon rsicon-link"></i></a>
													<a class="portfolioFancybox btn-zoom" data-fancybox-group="portfolioFancybox1" href="#portfolio1-inline1"><i class="rsicon rsicon-eye"></i></a>
													<a class="portfolioFancybox hidden" data-fancybox-group="portfolioFancybox1" href="#portfolio1-inline2"></a>
													<a class="portfolioFancybox hidden" data-fancybox-group="portfolioFancybox1" href="#portfolio1-inline3"></a>
												</div>
											</div>
										</figcaption>
									</figure>
									
									<!-- Start: Portfolio Inline Boxes -->
									<div id="portfolio1-inline1" class="fancybox-inline-box">
                                        <div class="inline-embed" data-embed-type="image" data-embed-url="<?php bloginfo('template_directory');?>/img/uploads/portfolio/portfolio-thumb-05-large.jpg"></div>
										<div class="inline-cont">
											<h2 class="inline-title">Street photography is photography that features the chance encounters and random accidents within public places.</h2>
											<div class="inline-text">
												<p>Street photography does not necessitate the presence of a street or even the urban environment. Though people usually feature directly, street photography might be absent of people and can be an object or environment where the image projects a decidedly human character in facsimile or aesthetic.</p>
											</div>
										</div>
									</div>																
									
									<div id="portfolio1-inline2" class="fancybox-inline-box">
                                        <div class="inline-embed" data-embed-type="image" data-embed-url="<?php bloginfo('template_directory');?>/img/uploads/portfolio/portfolio-thumb-01-large.jpg"></div>
										<div class="inline-cont">
											<div class="inline-text">
												<h2 class="inline-title">Framing and timing</h2>
												<p>Framing and timing can be key aspects of the craft with the aim of some street photography being to create images at a decisive or poignant moment. Street photography can focus on emotions displayed, thereby also recording people's history from an emotional point of view.</p>
											</div>
										</div>
									</div>
									
									<div id="portfolio1-inline3" class="fancybox-inline-box">
                                        <div class="inline-embed" data-embed-type="iframe" data-embed-url="https://player.vimeo.com/video/118244244"></div>
										<div class="inline-cont">
											<div class="inline-text">
												<h2 class="inline-title">A Look Into Documenting Street Fashion Photography</h2>
												<p>HB Nam is an internationally known street fashion photographer. In this Leica Camera Portrait, Nam explains how he started in photography and what photography means to him. For Nam, it's about documenting what's around him and the concentration required to achieve a good shot.</p>
											</div>
										</div>
									</div>
									<!-- End: Portfolio Inline Boxes -->
								</div>
							</div><!-- .grid-item -->			
						
							<div class="grid-item size11 bridge">
								<div class="grid-box">
									<figure class="portfolio-figure">
										<img src="<?php bloginfo('template_directory');?>/img/uploads/portfolio/portfolio-thumb-11-289x281.jpg" alt=""/>
										<figcaption class="portfolio-caption">
											<div class="portfolio-caption-inner">
												<h3 class="portfolio-title">Suspension Bridge</h3>
												<h4 class="portfolio-cat">Bridge</h4>

												<div class="btn-group">
													<a class="btn-link" href="http://bit.ly/1YtB8he" target="_blank"><i class="rsicon rsicon-link"></i></a>
													<a class="portfolioFancybox btn-zoom" data-fancybox-group="portfolioFancybox2" href="index.html#portfolio2-inline1"><i class="rsicon rsicon-eye"></i></a>
												</div>
											</div>
										</figcaption>
									</figure>
									
									<!-- Start: Portfolio Inline Boxes -->
									<div id="portfolio2-inline1" class="fancybox-inline-box">
										<div class="inline-cont">
											<h2 class="inline-title">Suspension Bridges - Design Technology</h2>
											<div class="inline-text">
												<p>Suspension bridges in their simplest form were originally made from rope and wood.
												Modern suspension bridges use a box section roadway supported by high tensile strength cables. 
												In the early nineteenth century, suspension bridges used iron chains for cables. The high tensile cables used in most modern suspension 
												bridges were introduced in the late nineteenth century.<br/>
												Today, the cables are made of thousands of individual steel wires bound tightly together. Steel, which is very strong under tension, is 
												an ideal material for cables; a single steel wire, only 0.1 inch thick, can support over half a ton without breaking.</p>
												<p>Light, and strong, suspension bridges can span distances from 2,000 to 7,000 feet far longer than any other kind of bridge. They are 
												ideal for covering busy waterways.</p>
												<p>With any bridge project the choice of materials and form usually comes down to cost.
												Suspension bridges tend to be the most expensive to build. A suspension bridge suspends the roadway from huge main cables, which extend 
												from one end of the bridge to the other. These cables rest on top of high towers and have to be securely anchored into the bank at either 
												end of the bridge. The towers enable the main cables to be draped over long distances. Most of the weight or load of the bridge is 
												transferred by the cables to the anchorage systems. These are imbedded in either solid rock or huge concrete blocks. Inside the anchorages, 
												the cables are spread over a large area to evenly distribute the load and to prevent the cables from breaking free.</p>
												<p>The Arthashastra of Kautilya mentions the construction of dams and bridges.A Mauryan bridge near Girnar was surveyed by James Princep. 
												The bridge was swept away during a flood, and later repaired by Puspagupta, the chief architect of emperor Chandragupta I. The bridge 
												also fell under the care of the Yavana Tushaspa, and the Satrap Rudra Daman. The use of stronger bridges using plaited bamboo and iron 
												chain was visible in India by about the 4th century. A number of bridges, both for military and commercial purposes, were constructed by 
												the Mughal administration in India.</p>
											</div>
										</div>
									</div>
									<!-- End: Portfolio Inline Boxes -->
								</div>
							</div><!-- .grid-item -->
							
							<div class="grid-item size11 nature photography">
								<div class="grid-box">
									<figure class="portfolio-figure">
										<img src="<?php bloginfo('template_directory');?>/img/uploads/portfolio/portfolio-thumb-08-289x281.jpg" alt=""/>
										<figcaption class="portfolio-caption">
											<div class="portfolio-caption-inner">
												<h3 class="portfolio-title">Rocky Mountains</h3>
												<h4 class="portfolio-cat">Nature, Photography</h4>

												<div class="btn-group">
													<a class="btn-link" href="http://bit.ly/1YtB8he" target="_blank"><i class="rsicon rsicon-link"></i></a>
													<a class="portfolioFancybox btn-zoom" data-fancybox-group="portfolioFancybox3" href="index.html#portfolio3-inline1"><i class="rsicon rsicon-eye"></i></a>
													<a class="portfolioFancybox hidden" data-fancybox-group="portfolioFancybox3" href="index.html#portfolio3-inline2"></a>
													<a class="portfolioFancybox hidden" data-fancybox-group="portfolioFancybox3" href="index.html#portfolio3-inline3"></a>
												</div>
											</div>
										</figcaption>
									</figure>

									<!-- Start: Portfolio Inline Boxes -->
									<div id="portfolio3-inline1" class="fancybox-inline-box">
                                        <div class="inline-embed" data-embed-type="image" data-embed-url="<?php bloginfo('template_directory');?>/img/uploads/portfolio/portfolio-thumb-08-large.jpg"></div>
									</div>

									<div id="portfolio3-inline2" class="fancybox-inline-box">
                                        <div class="inline-embed" data-embed-type="image" data-embed-url="<?php bloginfo('template_directory');?>/img/uploads/portfolio/portfolio-thumb-04-large.jpg"></div>
									</div>
									
									<div id="portfolio3-inline3" class="fancybox-inline-box">
                                        <div class="inline-embed" data-embed-type="image" data-embed-url="<?php bloginfo('template_directory');?>/img/uploads/portfolio/portfolio-thumb-02-large.jpg"></div>
									</div>
									<!-- End: Portfolio Inline Boxes -->
								</div>
							</div><!-- .grid-item -->
						</div>

						<div class="grid-more">
							<span class="ajax-loader"></span>
							<button class="btn btn-border ripple"><i class="rsicon rsicon-add"></i></button>
						</div>
					</div>	
				</section><!-- #portfolio -->
				
				<section id="experience" class="section section-experience">
					<div class="animate-up">
						<h2 class="section-title">Work Experience</h2>
						<div class="timeline">
							<div class="timeline-bar"></div>
							<div class="timeline-inner clearfix">
								<?php 
									$args = array(
										'post_type'=> 'experience',
									);              
									
									$the_query = new WP_Query( $args );
									
									if($the_query->have_posts() ) : 
										while ( $the_query->have_posts() ) : 
										$the_query->the_post(); ?>
										<?php if ($the_query->current_post % 2 == 0): ?>
											<div class="timeline-box timeline-box-left">
											<span class="dot"></span>
											<div class="timeline-box-inner animate-right">
												<span class="arrow"></span>
												<div class="date"><?php the_field('date_work_begin'); ?> - <?php the_field('date_work_finish'); ?></div>
												<h3><?php the_title()?></h3>
												<h4><?php the_field('work_title'); ?></h4>
												<p><?php the_content()?></p>
											</div>
										</div>
										<?php else: ?>
											<div class="timeline-box timeline-box-right">
											<span class="dot"></span>
											<div class="timeline-box-inner animate-left">
												<span class="arrow"></span>
												<div class="date"><?php the_field('date_work_begin'); ?> - <?php the_field('date_work_finish'); ?></div>
												<h3><?php the_title()?></h3>
												<h4><?php the_field('work_title'); ?></h4>
												<p><?php the_content()?></p>
											</div>
										</div>
										<?php endif ?>
										
										<?php
										endwhile; 
										wp_reset_postdata(); 
									
									endif;
									
								?>
									
							</div>
						</div>
					</div>	
				</section><!-- #experience -->
				
				<section id="education" class="section section-education">
					<div class="animate-up">
						<h2 class="section-title">Education</h2>
						<div class="timeline">
							<div class="timeline-bar"></div>
							<div class="timeline-inner clearfix">
							<?php 
									$args = array(
										'post_type'=> 'education',
									);              
									
									$the_query = new WP_Query( $args );
									
									if($the_query->have_posts() ) : 
										while ( $the_query->have_posts() ) : 
										$the_query->the_post(); ?>
										<?php if ($the_query->current_post % 2 == 0): ?>
											<div class="timeline-box timeline-box-compact timeline-box-left">
                                    			<span class="dot"></span>

                                    			<div class="timeline-box-inner animate-right">
                                        			<span class="arrow"></span>
                                        			<div class="date"><?php the_field('date_edu_begin'); ?> - <?php the_field('date_edu_finish'); ?></div>
													<h3><?php the_title()?></h3>
													<h4><?php the_field('school'); ?></h4>
                                    			</div>
                                			</div>
										<?php else: ?>
											<div class="timeline-box timeline-box-right">
											<span class="dot"></span>
											<div class="timeline-box-inner animate-left">
												<span class="arrow"></span>
												<div class="date"><?php the_field('date_edu_begin'); ?> - <?php the_field('date_edu_finish'); ?></div>
												<h3><?php the_title()?></h3>
												<h4><?php the_field('school'); ?></h4>
											</div>
										</div>
										<?php endif ?>
										
										<?php
										endwhile; 
										wp_reset_postdata(); 
									endif;
								?>
                                
							</div>
						</div>
					</div>	
				</section><!-- #education -->
				
				<section id="clients" class="section section-clients">
					<div class="animate-up">

                        <div class="clients-carousel">
                            <div class="client-logo">
                                <a href="http://market.envato.com" target="_blank"><img src="<?php bloginfo('template_directory');?>/img/uploads/logos/logo-envato.png" title="envato" alt="envato"/></a>
                            </div>

                            <div class="client-logo">
                                <img src="<?php bloginfo('template_directory');?>/img/uploads/logos/logo-angularjs.png" title="angular js" alt="angular js"/>
                            </div>

                            <div class="client-logo">
                                <a href="https://www.omniref.com/ruby/gems/teaspoon/0.7.9" target="_blank"><img src="<?php bloginfo('template_directory');?>/img/uploads/logos/logo-teaspoon.png" title="teaspoon" alt="teaspoon"/></a>
                            </div>

                            <div class="client-logo">
                                <a href="https://wordpress.com" target="_blank"><img src="<?php bloginfo('template_directory');?>/img/uploads/logos/logo-wordpress.png" title="wordpress" alt="wordpress"/></a>
                            </div>

                            <div class="client-logo">
                                <a href="https://evernote.com" target="_blank"><img src="<?php bloginfo('template_directory');?>/img/uploads/logos/logo-evernote.png" title="evernote" alt="evernote"/></a>
                            </div>

                            <div class="client-logo">
                                <a href="http://compass-style.org" target="_blank"><img src="<?php bloginfo('template_directory');?>/img/uploads/logos/logo-compass.png" title="compass" alt="compass"/></a>
                            </div>

                            <div class="client-logo">
                                <a href="http://getbootstrap.com" target="_blank"><img src="<?php bloginfo('template_directory');?>/img/uploads/logos/logo-bootstrap.png" title="bootstrap" alt="bootstrap"/></a>
                            </div>

                            <div class="client-logo">
                                <a href="http://jasmine.github.io" target="_blank"><img src="<?php bloginfo('template_directory');?>/img/uploads/logos/logo-jasmine.png" title="jasmine" alt="jasmine"/></a>
                            </div>

                            <div class="client-logo">
                                <a href="https://jquery.com" target="_blank"><img src="<?php bloginfo('template_directory');?>/img/uploads/logos/logo-jquery.png" title="jquery" alt="jquery"/></a>
                            </div>
						</div>
					</div>
				</section><!-- #clients -->
								
				<section id="references" class="section section-references">
					<div class="animate-up">
						<h2 class="section-title">References</h2>
						<div class="section-box">
							<ul class="ref-slider">
								<?php
								$args = array(
									'post_type'=> 'reference',
								);       
								$the_query = new WP_Query( $args );
									
								if($the_query->have_posts() ) : 
									while ( $the_query->have_posts() ) : 
									$the_query->the_post(); ?>
									<li>
										<div class="ref-box">
											<div class="person-speech">
												<p><?php the_content(); ?></p>
											</div>
											<div class="person-info clearfix">
												<img class="person-img" src="<?php the_field("profile_picture")?>" alt="Headshot">
												<div class="person-name-title">
													<span class="person-name"><?php the_field("person_name")?></span>
													<span class="person-title"><?php the_field("person_title")?></span>
												</div>
											</div>
										</div>
									</li>
								<?php
								endwhile; 
								wp_reset_postdata(); 
								endif;
								?>
								
							</ul>
							<div class="ref-slider-nav">
								<span id="ref-slider-prev" class="slider-prev"></span>
								<span id="ref-slider-next" class="slider-next"></span>
							</div>
						</div>
					</div>	
				</section><!-- #references -->
				
				<section id="prices" class="section section-prices">
                    <div class="animate-up">
                        <h2 class="section-title">Pricing</h2>

						<div class="row price-list">
                            <div class="col-sm-4">
                                <div class="price-box">
                                    <div class="price-box-top">
                                        <span>$16</span><small>/mo</small>
                                    </div>
                                    <div class="price-box-content">
                                        <h3>Basic</h3>
                                        <ul>
                                            <li>Manage tasks</li>
                                            <li>Discussions in tasks</li>
                                            <li>File sharing <span class="new">new</span></li>
                                            <li><del>Real-time Activity Stream</del></li>
                                            <li><del>Spreadsheet View</del></li>
                                            <li><del>iPhone and Android apps</del></li>
                                            <li><del>Advanced email integration</del></li>
                                            <li><del>Basic Integrations</del></li>
                                        </ul>
                                        <div class="btn-wrap">
                                            <a class="btn btn-lg btn-border" href="http://themeforest.net/user/px-lab/portfolio?ref=PX-lab">Buy Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="price-box box-primary">
                                    <div class="price-box-top">
                                        <span>$50</span><small>/mo</small>
                                    </div>
                                    <div class="price-box-content">
                                        <h3>Professional</h3>
                                        <ul>
                                            <li>Manage tasks</li>
                                            <li>Discussions in tasks</li>
                                            <li>File sharing <span class="new">new</span></li>
                                            <li>Real-time Activity Stream</li>
                                            <li>Spreadsheet View <span class="new">new</span></li>
                                            <li><del>iPhone and Android apps</del></li>
                                            <li><del>Advanced email integration</del></li>
                                            <li><del>Basic Integrations</del></li>
                                        </ul>
                                        <div class="btn-wrap">
                                            <a class="btn btn-lg btn-border" href="http://themeforest.net/user/px-lab/portfolio?ref=PX-lab">Buy Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="price-box">
                                    <div class="price-box-top">
                                        <span>$250</span><small>/mo</small>
                                    </div>
                                    <div class="price-box-content">
                                        <h3>Enterprise</h3>
                                        <ul>
                                            <li>Manage tasks</li>
                                            <li>Discussions in tasks</li>
                                            <li>File sharing <span class="new">new</span></li>
                                            <li>Real-time Activity Stream</li>
                                            <li>Spreadsheet View <span class="new">new</span></li>
                                            <li>iPhone and Android apps</li>
                                            <li>Advanced email integration</li>
                                            <li>Basic Integrations</li>
                                        </ul>
                                        <div class="btn-wrap">
                                            <a class="btn btn-lg btn-border" href="http://themeforest.net/user/px-lab/portfolio?ref=PX-lab">Buy Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
					</div>
                </section><!-- #prices -->
				
				<section id="blog" class="section section-blog">
					<div class="animate-up">
						<h2 class="section-title">From The Blog</h2>

                        <div class="blog-grid">
                            <div class="grid-sizer"></div>
                            <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

                			<?php get_template_part('content'); ?>
            
            				<?php endwhile; endif; ?>
						</div>
					</div>
					
				</section> <!--#blog -->
				<?php $section = get_field("text_section")?>
				<section id="text-section" class="section section-text">
					<div class="animate-up animated">
						<h2 class="section-title"><?php echo $section["title_section"]?></h2>
						<div class="section-box">
							<p><?php echo $section["text_section"]?></p>
						</div>
					</div>
				</section><!-- #text-section -->
				
				<section id="interests" class="section section-interests">
					<div class="animate-up">
						<h2 class="section-title">My Interests</h2>

						<div class="section-box">
							<p>I have a keen interest in photography. I was vice-president of the photography club during my time at university, 
							and during this period I organised a number of very successful exhibitions and events both on and off campus.						
							<br/>I also play the piano to grade 8 standard.</p>

							<ul class="interests-list">
								<li>
									<i class="map-icon map-icon-bicycling"></i>
									<span>Bicycling</span>
								</li>
								<li>
									<i class="map-icon map-icon-movie-theater"></i>
									<span>Watch Movies</span>
								</li>
								<li>
									<i class="map-icon map-icon-ice-skating"></i>
									<span>Skating</span>
								</li>
								<li>
									<i class="map-icon map-icon-shopping-mall"></i>
									<span>Shopping</span>
								</li>
								<li>
									<i class="map-icon map-icon-tennis"></i>
									<span>Playing Tennis</span>
								</li>
								<li>
									<i class="map-icon map-icon-bowling-alley"></i>
									<span>Playing Bowling</span>
								</li>
								<li>
									<i class="map-icon map-icon-swimming"></i>
									<span>Swimming</span>
								</li>
							</ul>
						</div>
					</div>	
				</section><!-- #interests -->
				
				<section id="calendar" class="section section-calendar">
					<div class="animate-up">
						<h2 class="section-title">Availability Calendar</h2>

						<div class="calendar-busy" data-weekstart="monday">
							<div class="calendar-today" style="background-image: url('<?php bloginfo('template_directory');?>/img/uploads/rs-calendar-cover.jpg')">
								<div class="valign-outer">
									<div class="valign-middle">
										<div class="valign-inner">
											<div class="date">
												<span class="day"></span>
												<span class="month"></span>
											</div>
											<div class="week-day"></div>
										</div>
									</div>
								</div>
							</div>

							<div class="calendar-cont">
								<div class="calendar-header">
									<div class="calendar-nav">
										<span class="active-date"><span class="active-month"></span><span class="active-year"></span></span>
										<a class="calendar-prev ripple-centered" title="Prev"><i class="rsicon rsicon-chevron_left"></i></a>
										<a class="calendar-next ripple-centered" title="Next"><i class="rsicon rsicon-chevron_right"></i></a>
									</div>
								</div>

								<table class="calendar-body">
									<thead class="calendar-thead"></thead>
									<tbody class="calendar-tbody"></tbody>
								</table>
								<div class="calendar-busy-note">Sorry. I'm not available on those days</div>
							</div>
						</div>
					</div>	
				</section><!-- #calendar -->
				
				<section id="contact" class="section section-contact">
					<div class="animate-up">
						<h2 class="section-title">Contact Me</h2>

						<div class="row">
							<div class="col-sm-6">
								<div class="section-box contact-form">
									<h3>Feel free to contact me</h3>
									
									<form class="contactForm" action="index.html" method="post">
										<div class="input-field">
											<input class="contact-name" type="text" name="name"/>
											<span class="line"></span>
											<label>Name</label>
										</div>

										<div class="input-field">
											<input class="contact-email" type="email" name="email"/>
											<span class="line"></span>
											<label>Email</label>
										</div>

										<div class="input-field">
											<input class="contact-subject" type="text" name="subject"/>
											<span class="line"></span>
											<label>Subject</label>
										</div>

										<div class="input-field">
											<textarea class="contact-message" rows="4" name="message"></textarea>
											<span class="line"></span>
											<label>Message</label>
										</div>

										<span class="btn-outer btn-primary-outer ripple">
											<input class="contact-submit btn btn-lg btn-primary" type="submit" value="Send"/>
										</span>
										
										<div class="contact-response"></div>
									</form>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="section-box contact-info has-map">
									<ul class="contact-list">
										<li class="clearfix">
											<strong>Address</strong>
											<span><?php echo $info['adress'];?></span>
										</li>
										<li class="clearfix">
											<strong>phone</strong>
											<span><a href="tel:+12562548456"><?php echo $info['phone'];?></a></span>
										</li>
										<li class="clearfix">
											<strong>E-mail</strong>
											<span><a href="mailto:<?php echo $info['email'];?>"><?php echo $info['email'];?></a></span>
										</li>
									</ul>

									<div id="map" data-latitude="50.84592" data-longitude="4.366859999999974"></div>
								</div>
							</div>
						</div>
					</div>	
				</section><!-- #contact -->
				
								
			<!-- END: PAGE CONTENT -->
                
            </div><!-- .container -->
        </div><!-- .content -->
        <?php get_footer(); ?>