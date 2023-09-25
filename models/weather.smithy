$version: "2"
namespace smithy.example

use aws.protocols#restJson1
use smithy.framework#ValidationException

@restJson1
service Repro {
    version: "2023-09-25"
    operations: [ PublishMessages ]
    errors: [ ValidationException ]
}

@http(method: "POST", uri: "/streaming")
operation PublishMessages {
    input: PublishMessagesInput
}

@input
structure PublishMessagesInput {
    @httpHeader("room")
    room: String
    @httpPayload
    messages: PublishEvents
}

@streaming
union PublishEvents {
    message: Message
    leave: LeaveEvent
}

structure Message {
    message: String
}

structure LeaveEvent {}