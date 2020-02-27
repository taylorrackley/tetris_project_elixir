defmodule TetrisUiWeb.TetrisLive do
    use Phoenix.LiveView

    def mount(_params , _session, socket) do
        {:ok, socket}
    end

    def render(assigns) do
        IO.puts("debug")
        ~L"""
        <div phx-keydown="keydown" phx-target="window">
        <img src="https://i.imgur.com/eHqSyDa.png" alt="space" />
        <h3 class="text-center">LiveView is awesome!</h3>
        </div>
        """
    end

    def handle_event("keydown", key, socket) do
        IO.inspect(key)
        {:noreply, assign(socket, message: "keydown event")}
    end
end