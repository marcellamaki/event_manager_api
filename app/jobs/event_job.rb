class EventJob < ApplicationJob

	@events << Event.where("created_at >= ?", Time.now - 1.hours)

	def postAllNewEvents
		@events.each do |e|
			postToEventbrite(e)
			postToMeetUp(e)

	end


	def postToEventbrite(event)
		RestClient.post 'https://www.eventbrite.com/developer/v3/event', {name: event.name, organizer: event.organizer, url: event.url, start: event.startTime, end: event.endTime, currency: 840, category: event.category}
	end

	def postToMeetUp(event)
	end

	def postTo(event)

end
