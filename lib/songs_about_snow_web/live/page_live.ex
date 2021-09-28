defmodule SongsAboutSnowWeb.PageLive do
  use SongsAboutSnowWeb, :live_view
  alias SongsAboutSnow.PoetryLinks
  alias SongsAboutSnow.PerformanceLinks

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end

  def impl(assigns) do
    ~L"""
    <div class="indent1 impl">
      <span class="impl">@impl</span> <span><%= @behaviour %></span>
    </div>
    """
  end

  def def_clause(assigns) do
    ~L"""
    <div class="indent1">
      <span class="def">def </span>
      <span class="func-name"><%= @func_name %></span>
      <span class="do">do</span>
    </div>
    """
  end

  def github(assigns) do
    ~L"""
    <div class="indent1 end">
      <span class="def">def </span>
      <span class="func-name">github</span>,
      <span class="do">do:</span>
      <span><%= link "github.com/mikowitz", to: "https://github.com/mikowitz/" %></span>
    </div>
    """
  end

  def ezcater(assigns) do
    ~L"""
    <div class="indent1 end">
      <span class="def">def </span>
      <span class="func-name">job</span>,
      <span class="do">do:</span>
      <span class="ezcater"><%= link "EzCater", to: "https://www.ezcater.com" %></span>
    </div>
    """
  end

  def twitter(assigns) do
    ~L"""
    <div class="indent1">
      <span class="def">def </span>
      <span class="func-name">twitter</span>,
      <span class="do">do:</span>
      <span class="twitter"><%= link "@hal678", to: "https://www.twitter.com/hal678" %></span>
    </div>
    """
  end

  def publications(assigns) do
    links = PoetryLinks.links()

    ~L"""
    <div class="indent2">
      <div>[</div>
      <%= for {pub, link} <- links do %>
        <div class="indent1">
          <%= link pub, to: link %>
        <%= if {pub, link} != List.last(links), do: "," %>
        </div>
      <% end %>
      <div>]</div>
    </div>
    """
  end

  def performances(assigns) do
    links = PerformanceLinks.links()

    ~L"""
    <div class="indent2">
      <div>[</div>
      <%= for {pub, link} <- links do %>
        <div class="indent1">
          <%= link pub, to: link %>
        <%= if {pub, link} != List.last(links), do: "," %>
        </div>
      <% end %>
      <div>]</div>
    </div>
    """
  end
end
