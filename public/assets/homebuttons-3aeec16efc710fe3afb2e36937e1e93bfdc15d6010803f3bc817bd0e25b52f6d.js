function changePostsVisibility() {
	var allPosts = document.getElementById("allPosts");
    var allTutorials = document.getElementById("allTutorials");

	if(allTutorials.style.display === 'none'){
	  //allPosts.style.visibility='hidden';
	  //allTutorials.style.visibility='visible';
	  allPosts.style.display = 'none';
	  allTutorials.style.display = 'block';
	  	
	}
    else{
      //allPosts.style.visibility='visible';
	  //allTutorials.style.visibility='hidden';	
	  allPosts.style.display = 'block';
	  allTutorials.style.display = 'none';	
    }
}
;
