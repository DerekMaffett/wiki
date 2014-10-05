# Description

This is an app for demonstrating a has and belongs to many relationship. It
follows the style of a wiki, with any registered user able to modify and create
articles. Every time an article is updated, a relationship is made in the join
table provided the relationship does not already exist.

Notably, this model is somewhat stressed if it were to continue into the future.
Already this could potentially benefit from validations on a separate join model
and a separate Edit model could easily be imagined, listing the times and
specifics of updates. Such an expansion would likely require changing to a
has_many, through: relationship instead of has and belongs to many.
