defmodule Pushito.Connection.State do
  @moduledoc """
  This module represents the connection state for Pushito.Connection
  """

  @enforce_keys [:config, :client, :h2_connection]
  defstruct config: nil, client: nil, h2_connection: nil, backoff: 1, backoff_ceiling: 10

  @type t :: %__MODULE__{config: Pushito.Config.t,
                         client: pid,
                         h2_connection: pid,
                         backoff: integer,
                         backoff_ceiling: integer}
end
