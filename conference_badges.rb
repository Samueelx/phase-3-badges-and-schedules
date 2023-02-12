def badge_maker(name)
    return "Hello, my name is #{name}.";
end

def batch_badge_creator(names)
    messages = names.collect {|name| "Hello, my name is #{name}."}
    return messages;
end

def assign_rooms(speakers)
    messages = speakers.map.with_index do |speaker, index|
        "Hello, #{speaker}! You'll be assigned to room #{index+1}!"
    end
    return messages;
end

def printer(speakers)
    greetings = batch_badge_creator(speakers);
    greetings.each {|greeting| puts greeting};

    rooms = assign_rooms(speakers);
    rooms.each {|room| puts room}
end