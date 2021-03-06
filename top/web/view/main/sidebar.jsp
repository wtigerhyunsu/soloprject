<!-- Sidebar START -->
<div class="sidebar">

	<div class="sidebar-background"></div>
	<div class="sidebar-wrapper scrollbar-inner">
		<div class="sidebar-content">
			<c:choose>
				<c:when test="${loginId == null }">			
				
			</c:when>
				<c:otherwuse>
				</c:otherwuse>
			</c:choose>


			<!-- MENU START HERE -->
			<ul class="nav">

				<!-- HOME -->
				<li class="nav-item active"><a href="index.html"> <i
						class="fas fa-home"></i>
						<p>HOME</p> <!-- <span class="badge badge-count">5</span> -->
				</a></li>

				<!-- Menu -->
				<li class="nav-section"><span class="sidebar-mini-icon">
						<i class="fa fa-ellipsis-h"></i>
				</span>
					<h4 class="text-section">Menu</h4></li>

				<!-- Inventory Management -->
				<li class="nav-item"><a  href="moving.top">
						<i class="fas fa-layer-group"></i>
						<p>Inventory</p>
				</a></li>


				<!-- Delivery Status -->
				<li class="nav-item"><a data-toggle="collapse" href="#forms">
						<i class="fas fa-pen-square"></i>
						<p>Delivery Status</p>
				</a></li>

				<!-- Chain Access Management -->
				<li class="nav-item"><a data-toggle="collapse" href="#tables">
						<i class="fas fa-table"></i>
						<p>Chain Access</p>
				</a></li>

				<!-- Menu Management -->
				<li class="nav-item"><a href="change.top">
						<i class="fas fa-map-marker-alt"></i>
						<p>Menu</p>
				</a></li>

				<!-- Container Management -->
				<li class="nav-item"><a data-toggle="collapse" href="#charts">
						<i class="far fa-chart-bar"></i>
						<p>Container</p>
				</a></li>

				<!-- A/S Center -->
				<li class="nav-item"><a href="widgets.html"> <i
						class="fas fa-desktop"></i>
						<p>A/S Center</p>
				</a></li>
			</ul>
		</div>
	</div>
</div>
<!-- Sidebar END -->