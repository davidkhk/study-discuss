defmodule DiscussWeb.CommentsChannel do
  use DiscussWeb, :channel
  alias DiscussWeb.Topic
  alias Discuss.Repo

  @impl true
  def join("comments:" <> topic_id, _params, socket) do
    topic_id = String.to_integer(topic_id)
    topic = Repo.get(Topic, topic_id)

    {:ok, %{}, socket}
  end

  @impl true
  def handle_in(name, message, socket) do
    {:reply, :ok, socket}
  end
end
