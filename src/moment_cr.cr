require "./moment_cr/*"

@[Link(ldflags: "#{__DIR__}/ext/libMoment.a")]
lib LibMoment
  fun parseDateTimeString(text : UInt8*) : Float64
end

module MomentCr
  def self.parse_utc(time : String)
    parsed_time = LibMoment.parseDateTimeString(time)
    Time.epoch(parsed_time.to_i)
  end

  def self.parse(time : String)
    parse_utc(time).to_local
  end
end