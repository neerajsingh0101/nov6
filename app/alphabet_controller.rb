#class AlphabetController < UIViewController 
class AlphabetController < UITableViewController

  def viewDidLoad
    super
    self.title = "Alphabet"
    @table = UITableView.alloc.initWithFrame(self.view.bounds) 
    @table.autoresizingMask = UIViewAutoresizingFlexibleHeight 
    self.view.addSubview(@table)

    @table.dataSource = self
    @data = ("A".."Z").to_a
  end 

  def tableView(tableView, numberOfRowsInSection: section)
    @data.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    @reuseIdentifier ||= "CELL_IDENTIFIER"
    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier)
    cell ||= UITableViewCell.alloc.initWithStyle( UITableViewCellStyleDefault, reuseIdentifier:@reuseIdentifier)
    cell.textLabel.text = @data[indexPath.row]
    cell
  end

end
