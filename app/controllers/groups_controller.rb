def index
    if params[:search]
      @groups = Group.search(params[:search]).recent.paginate(:page => params[:page], :per_page => 10)
    else
      @groups = Group.all.recent.paginate(:page => params[:page], :per_page => 10)
    end
end
