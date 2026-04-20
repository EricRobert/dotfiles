Write idiomatic Go that is easy to read, easy to review, and easy to change.

Prefer solutions that are direct, compact, and proportional to the problem. Favor code a teammate can understand in one pass.

Avoid code that feels academic, tutorial-like, over-abstracted, prematurely generalized, or designed around hypothetical misuse.
Do not add structure just to show structure.

Write Go in a Go shape.
Do not import patterns from other languages or “clean architecture” templates unless the problem clearly needs them.
Prefer simple functions, small concrete types, and straightforward control flow over indirection and layering.

Names should optimize for readability, not cleverness.
Keep them short when scope is small, and only grow them when necessary for clarity.
Do not repeat package names, simulate namespaces, or use verbose identifiers without need.

Keep the package surface small.
Only export symbols that are truly part of the API.
Prefer unexported helpers.
Before adding a new top-level symbol, ask whether it is essential, meaningfully reusable, and clearer than inlining.

Do not split logic into helpers just to make functions shorter.
Avoid one-use helpers, wrappers with no semantic value, and boilerplate.
Add helpers only when they improve clarity or reuse in a real way.

Do not introduce types unless they carry real meaning or boundaries.
Avoid unnecessary structs, interfaces, configs, option types, and custom errors.
Prefer passing values directly.
Prefer concrete types over interfaces unless abstraction is clearly needed.

Handle errors where they occur, with useful context.
Prefer simple checks and early returns.
Focus on real failure paths, not hypothetical ones.

Avoid speculative guards, excessive pre-validation, and defensive code meant to prevent misuse.
Do not build elaborate error taxonomies without a real need.

Return errors for normal failures.
Do not contort code to guard against every possible misuse.
Do not suppress panics that correctly expose broken assumptions.
Distinguish between operational errors and programmer mistakes.

Validate where correctness, domain rules, or external boundaries require it.
Do not add defensive validation for internal code paths without a concrete reason.

Prefer simple control flow.
Keep the happy path visible.
Avoid unnecessary concurrency, abstractions, or state machines when straight-line code is sufficient.

Define interfaces only when they are actually needed, and prefer defining them at the point of use.
Do not introduce interfaces for their own sake or for hypothetical mocking.

Avoid mocks by default.
Prefer testing real behavior with real implementations.
Use simple fakes or real dependencies when possible instead of building mock-heavy tests.

Do not narrate the code.
Comment only when explaining intent, invariants, or non-obvious decisions.

When generating code, use the fewest moving parts that solve the problem well.
Prefer modifying existing code over adding new files.
Prefer local logic over new helpers.
Prefer clarity over ceremony.

Avoid by default: builders, functional options for simple cases, deep hierarchies, single-implementation interfaces, generic helpers with one use, pass-through wrappers, and preemptive retries or recovery layers.

Write the simplest idiomatic Go that solves the real problem, handles real errors, and introduces as little surface area as possible.

