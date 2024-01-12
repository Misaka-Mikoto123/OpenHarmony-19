export class ListItemData {
  /**
   * Indicates unique id for list item.
   */
  id: number;
  /**
   * Indicates list item title.
   */
  title: string;

  /**
   * Indicates list item icon.
   */
  icon: string;

  constructor(id: number, title: string, icon: string) {
    this.id = id
    this.title = title
    this.icon = icon
  }
}