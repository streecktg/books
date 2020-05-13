<%= form_with(model: book, local: true) do |f| %>
  <% if book.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(book.errors.count, "error") %> prohibited this book from being saved:</h2>

      <ul>
      <% book.errors.full_messages.each do |message| %>
        <li><%= message %></li>
      <% end %>
      </ul>
    </div>
  <% end %>

    <!-- ---------------------------------------------------------------- -->
    <!-- Table #1 - Book Info.                                            -->
    <!-- ---------------------------------------------------------------- -->
    <!--            Author / Title / Series Name / series No.             -->
    <!--            ISBN / Publisher / Published Date                     -->
    <!-- ---------------------------------------------------------------- -->

    <table width="100%" border=1>
      <!-- -------------------------------------------------------------- -->
      <!-- Setup of 1st Row in Table #1.                                  -->
      <!--   Name = Author, Size = 50, Maxsize = 50.                      -->
      <!-- -------------------------------------------------------------- -->
      <tr>
        <td width="12%">
          <%= f.label :author %>
        </td>
        <td width="88%" colspan=3>
          <%= f.text_field :author, :size => 50, :maxsize => 50 %>
        </td>
      </tr>

      <!-- -------------------------------------------------------------- -->
      <!-- Setup of 2nd Row in Table #1.                                  -->
      <!--   Name = Title,, Size = 25, Maxsize = 25.                      -->
      <!-- -------------------------------------------------------------- -->
      <tr>
        <td width="12%">
          <%= f.label :title %>
        </td>
        <td width="38%">
          <%= f.text_field :title, :size => 25, :maxsize => 25 %>
        </td>
        <td width=12%>
          *
        </td>
        <td width=38%>
          *
        </td>
      </tr>

      <!-- -------------------------------------------------------------- -->
      <!-- Setup of 3rd Row in Table #1.                                  -->
      <!--   Name = Series name, Size = 25, Maxsize = 25.                 -->
      <!--   Name = Series No. , Size =  3, Maxsize =  3.                 -->
      <!-- -------------------------------------------------------------- -->
      <tr>
        <td width="12%">
          <%= f.label :series_name %>
        </td>
        <td width="38%">
          <%= f.text_field :series_name, :size => 25, :maxsize => 25 %>
        </td>
        <td width=12%>
        <%= f.label :series_no %>
        </td>
        <td width=38%>
          <%= f.text_field :series_no, :size => 3, :maxsize => 3 %>
        </td>
      </tr>

      <!-- -------------------------------------------------------------- -->
      <!-- Setup of 4th Row in Table #1.                                  -->
      <!--   Name = ISBN Tab No, Size = 20, Maxsize = 20.                 -->
      <!--   Name = Publisher  , Size = 20, Maxsize = 20.                 -->
      <!-- -------------------------------------------------------------- -->
      <tr>
        <td width="12%">
          <%= f.label :isbn_tab_no %>
        </td>
        <td width="38%">
          <%= f.text_field :isbn_tab_no, :size => 20, :maxsize => 20 %>
        </td>
        <td width=12%>
          <%= f.label :publisher %>
        </td>
        <td width=38%>
          <%= f.text_field :publisher, :size => 20, :maxsize => 20 %>
        </td>
      </tr>

      <!-- -------------------------------------------------------------- -->
      <!-- Setup of 5th Row in Table #1.                                  -->
      <!--   Name = Published Date.                                       -->
      <!--          Has 3 fields Year, Month, Day.                        -->
      <!--          Year has a start year of 1900.                        -->
      <!-- -------------------------------------------------------------- -->
      <tr>
        <td width="12%">
          <%= f.label :published_date %>
        </td>
        <td width="38%">
          <!--<%= f.date_select :published_date %>-->
          <%= date_select :book, :published_date, :start_year => 1900 %>
        </td>
        <td width=12%>
          *
        </td>
        <td width=38%>
          *
        </td>
      </tr>
    </table>

    <!-- ---------------------------------------------------------------- -->
    <!-- Draws a horizontal line, Size = 4.                               -->
    <!-- ---------------------------------------------------------------- -->
    <hr size="4" "noshade">
    </hr>
  <!--</div>-->

  <!--<div id="lay_out_table_#2">-->
    <!-- ---------------------------------------------------------------- -->
    <!-- Table #2 - Purchased Info.                                       -->
    <!-- ---------------------------------------------------------------- -->
    <!--            Location / Price / Purchased / Entry Date.            -->
    <!-- ---------------------------------------------------------------- -->

    <table width="100%" border=1>
      <!-- -------------------------------------------------------------- -->
      <!-- Setup of 1st Row in Table #2.                                  -->
      <!--   Name = Location, Size = 20, Maxsize = 20.                    -->
      <!--   Name = Price,    Size =  7, Maxsize =  7.                    -->
      <!-- -------------------------------------------------------------- -->
      <tr>
        <td width="12%">
          <%= f.label :location %>
        </td>
        <td width="38%">
          <%= f.text_field :location, :size => 20, :maxsize => 20 %>
        </td>
        <td width="12%">
          <%= f.label :price %>
        </td>
        <td width="38%">
          <%= f.text_field :price, :size => 7, :maxsize => 7 %>
        </td>
      </tr>

      <!-- -------------------------------------------------------------- -->
      <!-- Setup of 2nd Row in Table #2.                                  -->
      <!--   Name = Purchase Date.                                        -->
      <!--          Has 3 fields Year, Month, Day.                        -->
      <!--          Year has a start year of 1900.                        -->
      <!-- -------------------------------------------------------------- -->
      <tr>
        <td width="12%">
          <%= f.label :purchase_date %>
        </td>
        <td width="38%">
          <!--<%= f.date_select :purchase_date %>-->
          <%= date_select :book, :purchase_date, :start_year => 1900 %>
        </td>
        <td width="12%">
          <%= f.label :entry_date %>
        </td>
        <td width="38%">
          <%= f.date_select :entry_date %>
        </td>
      </tr>
    </table>

    <!-- ---------------------------------------------------------------- -->
    <!-- Draws a horizontal line, Size = 4.                               -->
    <!-- ---------------------------------------------------------------- -->
    <hr size="4" "noshade">
    </hr>
  <!--</div>-->

  <!--<div id="lay_out_table_#3">-->
    <!-- ---------------------------------------------------------------- -->
    <!-- Table #3 - Pop Up Menus.                                         -->
    <!-- ---------------------------------------------------------------- -->
    <!--            Condition / Media Type / Purpose / Book_type.         -->
    <!-- ---------------------------------------------------------------- -->

    <table width="100%" border=1>
      <!-- -------------------------------------------------------------- -->
      <!-- Setup of 1st Row in Table #3.                                  -->
      <!--   Name = Condition from contition table.                       -->
      <!--   Name = Media_type from media_type table.                     -->
      <!-- -------------------------------------------------------------- -->
      <!--<div id="condition_area">-->
        <tr>
          <td width="12%">
            <%= f.label :condition_id %>
          </td>
          <td width="38%">
            <!--<!%= f.text_field :condition_idx %>-->
            **
            <!-- -------------------------------------------------------- -->
            <!-- #1 This method works.                                    -->
            <!-- Note: Need to add belongs_to :condition to book.rb       -->
            <!--       Need to add has_many :books to condition.rb        -->
            <!-- -------------------------------------------------------- -->
            <%= collection_select(:book,
                                  :condition_id, 
                                   Condition.all, 
                                  :condition_idx, 
                                  :condition_name ) %>

            <!-- -------------------------------------------------------- -->
            <!-- #2 This method works.                                    -->
            <!-- Note: Need to add belongs_to :condition to book.rb       -->
            <!--       Need to add has_many :books to condition.rb        -->
            <!-- -------------------------------------------------------- -->
            <!--<!%= f.collection_select :condition_id,
                                   Condition.all,
                                  :condition_idx,
                                  :condition_name %>-->
          </td>
        <!--</tr>-->
      <!--</div>-->

      <!--<div id="media_type_area">-->
        <!--<tr>-->
          <td width="12%">
            <%= f.label :media_type_id %>
          </td>
          <td width="38%">
            <!--<!%= f.text_field :media_type_idx %>-->
            **
            <!-- -------------------------------------------------------- -->
            <!-- #1 This method works.                                    -->
            <!-- Note: Need to add belongs_to :media_type to book.rb      -->
            <!--       Need to add has_many :books to media_type.rb       -->
            <!-- -------------------------------------------------------- -->
            <%= collection_select(:book,
                                  :media_type_id, 
                                   Mediatype.all, 
                                  :media_type_idx, 
                                  :media_type_name ) %>

            <!-- -------------------------------------------------------- -->
            <!-- #2 This method works.                                    -->
            <!-- Note: Need to add belongs_to :media_type to book.rb      -->
            <!--       Need to add has_many :books to media_type.rb       -->
            <!-- -------------------------------------------------------- -->
            <!--<!%= f.collection_select :media_type_id,
                                     Mediatype.all,
                                    :media_type_idx,
                                    :media_type_name %>-->
          </td>
        </tr>
      <!--</div>-->

      <!-- -------------------------------------------------------------- -->
      <!-- Setup of 2nd Row in Table #3.                                  -->
      <!--   Name = Purpose from purpose table.                           -->
      <!--   Name = Book_type from book_type table.                       -->
      <!-- -------------------------------------------------------------- -->
      <!--<div id="purpose_area">-->
        <tr>
          <td width="12%">
            <%= f.label :purpose_id %>
          </td>
          <td width="38%">
            <!--<!%= f.text_field :purpose_idx %>-->
            **
            <!-- -------------------------------------------------------- -->
            <!-- #1 This method works.                                    -->
            <!-- Note: Need to add belongs_to :purpose to book.rb         -->
            <!--       Need to add has_many :books to purpose.rb          -->
            <!-- -------------------------------------------------------- -->
            <!--<!%= collection_select(:book,
                                  :purpose_id, 
                                   Purpose.all, 
                                  :purpose_idx, 
                                  :purpose_name ) %>-->

            <!-- -------------------------------------------------------- -->
            <!-- #2 This method works.                                    -->
            <!-- Note: Need to add belongs_to :condition to book.rb       -->
            <!--       Need to add has_many :books to condition.rb        -->
            <!-- -------------------------------------------------------- -->
            <!--<!%= f.collection_select :purpose_id,
                                   Purpose.all,
                                  :purpose_idx,
                                  :Purpose_name %>-->
          </td>
        <!--</tr>-->
      <!--</div>-->

      <!--<div id="book_type_area">-->
        <!--<tr>-->
          <td width="12%">
            <%= f.label :book_type_id %>
          </td>
          <td width="38%">
            <!--<!%= f.text_field :book_type_idx %>-->
            **
            <!-- -------------------------------------------------------- -->
            <!-- #1 This method works.                                    -->
            <!-- Note: Need to add belongs_to :book_type to book.rb       -->
            <!--       Need to add has_many :books to book_type.rb        -->
            <!-- -------------------------------------------------------- -->
            <!--<!%= collection_select(:book,
                                  :book_type_id, 
                                   Booktype.all, 
                                  :book_type_idx, 
                                  :book_type_name ) %>-->

            <!-- -------------------------------------------------------- -->
            <!-- #2 This method works.                                    -->
            <!-- Note: Need to add belongs_to :book_type to book.rb      -->
            <!--       Need to add has_many :books to book_type.rb       -->
            <!-- -------------------------------------------------------- -->
            <!--<!%= f.collection_select :book_type_id,
                                     Booktype.all,
                                    :book_type_idx,
                                    :book_type_name %>-->
          </td>
        </tr>
      <!--</div>-->
      <!--<!%= f.date_select :current_at NOW() %>-->
      <!--<!%= f.date_select :updated_at NOW() %>-->
               <!-- select_date() -->
    </table>

  <!--</div>-->
  <div class="actions">
    <%= f.submit %>
  </div>
<% end %>
