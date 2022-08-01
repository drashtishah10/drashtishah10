<section class="inpage">
	<div class="container">
		<div class="page-content-not-found">
			<?php if ( is_home() && current_user_can( 'publish_posts' ) ) : ?>
				<p><?php printf( __( 'Ready to publish your first post? <a href="%1$s">Get started here</a>.', 'morethanphysio' ), esc_url( admin_url( 'post-new.php' ) ) ); ?></p>
			<?php elseif ( is_search() ) : ?>
				<p><?php _e( 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', 'morethanphysio' ); ?></p>
			<?php else : ?>
				<p><?php _e( 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', 'morethanphysio' ); ?></p>
			<?php endif; ?>
		</div>
	</div>
</section>                 
