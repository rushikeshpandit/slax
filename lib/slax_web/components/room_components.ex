defmodule SlaxWeb.RoomComponents do
  use Phoenix.Component

  import SlaxWeb.CoreComponents

  attr :form, Phoenix.HTML.Form, required: true
  attr :target, :any, default: nil

  def room_form(assigns) do
    ~H"""
    <.form
      for={@form}
      id="room-form"
      class="space-y-8"
      phx-change="validate-room"
      phx-submit="save-room"
      phx-target={@target}
    >
      <.input field={@form[:name]} type="text" label="Name" phx-debounce />
      <.input field={@form[:topic]} type="text" label="Topic" phx-debounce />
      <div>
        <.button phx-disable-with="Saving..." class="btn btn-primary w-full">Save</.button>
      </div>
    </.form>
    """
  end
end
