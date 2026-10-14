# Addendum A — Rule-governed reconstruction, semantic accountability, and admission

Version: 1.0.0.  Date: 2026-10-13.

Applies to: `GRWTSK_Lean_Migration_Instructions.md`, without replacing its mathematical taxonomy or preservation requirements.

Repository snapshot inspected: `grwtsk/math`, `main`, commit `0029a80f5a86418cb62c658f3bbdaa3aad6c6285`.

Status: normative implementation instruction and public design rationale. This document is not an implemented checker, a compiled Lean development, an independent review, a migration-completion receipt, or a certification of the repository. No repository changes or remote configuration changes were performed in preparing it.

## A.1 Governing requirement

Every artifact within a declared repository/release snapshot MUST have an accountable origin, an exact role, an authorized location, and a finite reconstruction description. Every mathematical assertion presented as formally proved MUST additionally have a precise formal meaning and a checked derivation under the declared logical foundation. These are distinct obligations: reconstructing a string does not prove what the string says.

Organization is not complete when files have merely been moved into subject folders. Completion requires agreement among source membership, module ownership, mathematical classification, imports, declaration meaning, documentation, executable rules, receipts, and release claims.

The phrase “highest standards of rigor” MUST be replaced in acceptance reports by an explicit conformance profile, threat model, scope, and evidence. This addendum defines a demanding target; it does not create a universal ranking or certify itself.

Where the original instruction permits a state that this addendum makes more precise, apply the stronger compatible requirement. Preserve mathematical statements, public compatibility names, proof content, attribution, licenses, historical records, source variants, and concurrent work. Conflicts between preservation and a proposed transformation MUST be surfaced, not silently resolved through deletion or a weaker acceptance test.

The base instruction consolidates maintained first-party **Lean source** under `GRWTSK/`, with the documented root-entry exception. This addendum extends accountability to **all artifact types**; it does not move documentation, Python, configuration, or licenses into the Lean library.

## A.2 Inspection findings and required corrections

The inspected repository already establishes mathematical subject/object organization, pinned inputs, source-bound checks, owned-declaration auditing, explicit open premises, and distinctions between historical and fresh verification. These are substantial foundations, not evidence that every new requirement below is already met. [R1–R4]

The inspected `scripts/check_math_layout.py` checks subject paths and imports over tracked and nonignored untracked Lean sources. That does not establish a complete all-artifact catalog, byte reconstruction, formal meaning of documentation, or completeness of all build/audit source sets. Extend its protections; do not substitute a simpler unchecked glob. [R3]

The existing `GRWTSK/Logic/Inference/FiniteRuleSystems.lean` is especially relevant. It contains `GroundedSupport`, `grounded_target`, `mem_supportedClaims_iff`, `CertifiedProofRoute`, and `certified_supported_target`. Its text explicitly states that complete source discovery and authenticated revision resolution remain external obligations. Reuse and audit these mechanisms rather than treating a new manifest as if it had already discharged those obligations. [R4]

That module also retains a campaign-oriented human-readable heading while residing in a subject-oriented path. Its legacy namespace is permitted for compatibility; its maintained explanatory heading should be rewritten by mathematical object, with historical provenance retained separately. This is a concrete example of why directory normalization alone does not align every layer. Do not mistake this documentation issue for a defect in a theorem. [R4]

The original migration also exposes a source-role hazard: moving negative controls and auditing code below `GRWTSK/` changes what naive prefix-based discovery would include. Update discovery, umbrella generation, audit ownership, and runner dispatch atomically with those moves. A role label MUST NOT become a way to hide genuine library declarations from the census. [R2, R3]

The existing verification reference distinguishes pinned dependency-object reuse from dependency-source reconstruction and preserves pending or historical scopes. The new standard MUST retain those distinctions and add independent reconstruction where claimed. Refreshing a source digest cannot refresh a proof receipt. [R2]

## A.3 What “rule” means, and the precise connection to BB5

The connection to the Busy Beaver 5 proof is semantic, not rhetorical. The Coq-BB5 implementation defines `HaltDecideResult` with halting, nonhalting, and unknown cases. Its `HaltDecider_WF` gives mathematical obligations for the informative cases. Its `HaltDecider_cons_spec` proves that assembling sound deciders preserves the contract. The unknown case supplies no informative halting conclusion. [B1]

The proof architecture combines coverage of the machine search space with sound methods for classifying its cases; special cases require individual formal proofs rather than an exemption. Some methods verify supplied certificates, separating search from the correctness of acceptance. [B2, B3]

This addendum adopts the same distinction: a rule is an explicitly interpreted transition or inference whose use must meet a proved contract. An attractive folder name, administrator instruction, Boolean success flag, or reviewer preference is not by itself such a proof rule.

There are three related, but nonidentical, uses of rules:

* A machine transition specifies an operational step in a defined machine semantics.
* A logical inference or verified decider derives a justified assertion under a soundness theorem.
* A repository policy specifies an organizational obligation. It becomes a formally checked conformance rule only when the policy predicate, its interpretation, and a sound acceptance mechanism are supplied.

Do not claim that Lean and Coq use identical primitive calculi, axioms, or implementations. Coq-BB5 reports a dependency on `functional_extensionality_dep`; the existing GRWTSK audit permits `propext`, `Classical.choice`, and `Quot.sound`. Preserve and report each foundation rather than silently identifying them. [B2, R2]

BB5 did not prove that arbitrary repository programs terminate, that all mathematical statements are decidable, or that a naming scheme determines the truth of its contents. The repository analogy is **complete coverage of a declared scope plus sound acceptance of each admitted conclusion**, not an assertion that a new BB5 theorem has been transported into Lean. [B1–B3]

### A.3.1 Required semantic rule contract

Let `S` be a finite source/environment snapshot and `J` a typed judgment. Give each judgment a specified interpretation `Meaning(S, J)`. A rule instance has premises `P₁, …, Pₙ`, side conditions, and a conclusion `Q`:

```text
              Meaning(S, P₁)   …   Meaning(S, Pₙ)   Side(S, r)
              ------------------------------------------------ r
                                Meaning(S, Q)
```

To admit the rule as formally sound, provide a checked proof of:

```text
∀ S, Side(S, r) → (∀ p ∈ premises(r), Meaning(S, p))
                     → Meaning(S, conclusion(r)).
```

An executable checker for a rule or certificate requires a corresponding theorem:

```text
check(S, certificate) = Accept
    → Meaning(S, claimedConclusion(certificate)).
```

Do not assume this theorem merely because the checker is written in Lean. Bind the implemented checker, its parsed inputs, and its execution mode to the formal function in the theorem. A proof about an abstract parser is not yet a proof about arbitrary bytes passed to a different implementation.

For a migration operation `T(S, S')`, record the particular invariant `I` that the operation is meant to preserve and justify:

```text
Pre(S) ∧ T(S, S') ∧ I(S) → I(S').
```

For example, relocation can preserve public declaration contracts while changing import strings and ownership paths. It is incorrect to demand unchanged whole-file bytes and simultaneously rewrite imports; the changed regions and preserved invariants must be stated precisely.

### A.3.2 Judgment separation

Use different judgment constructors for different kinds of assurance. Examples include `ArtifactBytes`, `DeclaredInputClosure`, `AuthorizedPlacement`, `ResolvesTo`, `FormalStatement`, `KernelChecked`, `ExpectedDiagnostic`, `DocumentationBinding`, and `CurrentReceipt`.

A proof of `AuthorizedPlacement` establishes compliance with the ratified taxonomy, not that the taxonomy is uniquely mathematically optimal. A record of a human interpretation review establishes that a specified reviewer made that assessment, not an automatically kernel-proved equivalence between prose and a formula. A rejected negative fixture is not a proof that every possible strengthening of its target is false.

Never insert a coercion from “a record exists,” “a script returned success,” or “a reviewer approved” to the underlying mathematical proposition.

## A.4 Explicit foundation and layered rule sets

Adopt a versioned foundation record before introducing new self-checking rules. It MUST identify the snapshot boundary, admitted literal inputs, toolchain/compiler identities, dependency revisions and materialized inputs, enabled computation modes, logical axioms, checker implementations, platform assumptions, and source-access assumptions.

The foundation is an explicit trust boundary, not something validated by the artifact whose credibility it establishes. Proofs of checker soundness are relative to the stated logic and model; executing those checkers still introduces operational assumptions.

Use these layers, with separate evidence for each:

| Layer | Governing objects and rules | Evidence required |
|---|---|---|
| L0 — Foundation | Logic, checker, toolchain, dependency inputs, authorized policy version, literal origins | Immutable identities; explicit assumptions and access constraints |
| L1 — Inventory and bytes | Snapshot membership, file kinds, paths, modes, encodings, exact byte payloads | Independent discovery reconciliation and lossless reconstruction |
| L2 — Syntax and binding | Parsers, imports, scopes, notation, macros, names, options | Pinned parsing/elaboration and source-to-meaning mappings |
| L3 — Mathematics | Definitions, universes, hypotheses, proof terms, rule soundness | Kernel verification and declared axiom closure |
| L4 — Organization and transformation | Subject placement, role isolation, module graph, move/split/merge preservation | Reviewed mappings, coverage checks, semantic/API comparisons |
| L5 — Explanation and provenance | Documentation claims, source references, licenses, attribution, history | Exact bindings and an honest formal/informal distinction |
| L6 — Reconstruction and release | Artifact generation, freshness, conformance, independent replay | Source-bound receipts, deterministic rebuild results, complete gate outcomes |

Layering constrains justification, not every ordinary cross-reference. Mathematical induction, accepted recursive definitions, and mutually related mathematical concepts remain legitimate. What is prohibited is ungrounded circular evidence: a manifest accepting a checker merely because that checker accepts the same manifest.

Policy changes must be evaluated under the previously admitted policy plus an explicit migration/adoption authorization. During initial bootstrap, list the externally ratified foundation. A new version cannot grant itself permission to weaken the old axiom policy or turn failed evidence into success.

The current Lean/Mathlib pins remain unchanged for this organizational task. A checker incompatibility is an explicit blocked obligation, not permission to upgrade the toolchain invisibly.

## A.5 Exact meaning of “every symbol in every file can be reconstructed”

### A.5.1 Reconstruction is relative to inputs, not from nothing

Fix a finite basis `B` of retained source/literal bytes and explicitly declared dependency/tool inputs, a rule set `R`, and an environment specification `E`. For every artifact `f` in the snapshot, require a finite derivation description `D_f` such that:

```text
Reconstruct(R, E, B, D_f) = ExactBytes(f).
```

Require reconstruction of path identity and relevant file metadata separately. Hashes are useful locators and integrity checks; the equation is about bytes. Hash equality does not recover absent bytes and is not a logical proof that two different stored byte strings are equal.

General organizational rules do not uniquely determine an author's chosen words, an external observation, or a proof script. Handwritten source is a declared literal input, not falsely described as an automatically derived theorem. Preserving it as an input makes exact reconstruction possible; semantic acceptance then supplies the nontrivial mathematical obligation.

Do not make the standard vacuous by labeling every generated output “literal” after a failed regeneration. Artifact roles and reproduction modes must be declared before acceptance. Authored inputs, observations, imported material, and genuinely generated outputs have different obligations.

### A.5.2 Snapshot scope

The working inventory MUST cover tracked and nonignored untracked artifacts, with tracked deletions and conflicts separately reported. A releasable snapshot MUST have stable membership. Account for every versioned file type: Lean, Python, shell, Markdown, JSON, package configuration, license, notice, image, binary, data, and stored receipt.

Resolve submodule commits and large-file-storage pointers where relevant. A pointer is not the referenced content. Materialized dependencies used by verification belong to the declared input closure even when they are not first-party source.

Runtime caches, unrelated ignored scratch files, credentials, and Git's administrative internals are not silently part of the claimed mathematical release. State their exclusion. Any excluded artifact that a build actually reads becomes a declared input or a reconstruction failure. An ignored archive relied on for a published reconstruction claim must be durably available to the claimed audience; a private local path is insufficient.

Do not publish private source, personal context, credentials, or restricted historical material to make a public claim appear complete. Narrow the public claim and disclose the unavailable dependency instead.

### A.5.3 Lossless symbol coverage

For a text file, partition its complete byte interval into reversible ranges. No range may be missing, overlap ambiguously, or depend on an unavailable origin. Associate each range with its source origin or producing rule and with the applicable syntactic/semantic role.

Track encoding, line endings, whitespace, comments, escaped characters, Unicode code points, and identifier normalization behavior. Report look-alike identifiers. Preserve historical bytes; do not silently normalize them. Specify a canonical policy for new generated output, and treat a proposed normalization of existing source as a separately reviewed transformation.

Ranges may be coalesced; a separate database row for each byte is unnecessary. Binary artifacts receive byte-level provenance and their format/generation contract, not invented textual semantics.

An ordinary syntax-tree pretty printer generally is not a lossless reconstruction mechanism. Require a lossless representation or retention of the exact source bytes. If parsing and rendering are claimed to recover the source, test the exact round-trip property on the declared supported syntax.

### A.5.4 Lean meaning reconstruction

For every declaration and every semantically significant occurrence, retain enough information to recover the resolved meaning in the pinned environment: owning module, fully qualified constant or local binder, universes, elaborated type, implicit arguments, instances, coercions, macro expansion, notation scope, relevant options, and proof/definition dependencies.

Not every character denotes a declaration. Parentheses, binders, notation tokens, tactic syntax, comments, and whitespace receive their actual roles. Generated constants and source-free expansions need an explicit generating origin. A tracing tool that cannot map a supported construct reports a coverage gap rather than inventing a binding.

Retaining exact sources, imports, dependency objects/sources, and environment is necessary for replay; a list of theorem names is insufficient. Compare formal interfaces using elaborated structures and reviewed correspondences, not source spelling or a lossy pretty-printed digest alone. [L1, L2]

### A.5.5 Deterministic generation and immutable observations

For each generated artifact record input identities, generator source/binary identity, command, arguments, declared environment, schema versions, locale, platform-sensitive settings, random seed where relevant, and output identities. Eliminate hidden current time, host paths, ambient packages, and network responses from deterministic generation, or explicitly classify those values as retained inputs.

Use three distinct operations:

* **Restore:** recover an immutable input or historical observation from retained exact bytes.
* **Regenerate:** execute a specified deterministic recipe and reproduce the specified artifact bytes.
* **Reobserve:** rerun a check and issue a new observation; its timestamp and run identity need not equal the old receipt.

Do not confuse restoring an old successful log with rerunning its check. A reproducible-build claim applies only to declared artifacts and a declared environment, with actual byte comparisons. [L3]

Manifests, schemas, rules, and receipts are themselves covered artifacts. Avoid self-hashing loops: a manifest can describe its input collection and be hashed by an outer receipt, while its own bytes are generated from that collection and schema. The outer receipt must not require its own digest as an input to generating itself.

## A.6 Grounded derivations and complete coverage

Represent derived admission as an inductive derivation, not unrestricted reachability in a graph whose labels say “proved.” Each admitted rule instance must supply all premises and side conditions. Empty-premise leaves are permitted only where they have the required justification, such as an actual checked proof or a clearly typed statement about an admitted literal input.

The existing finite-support development already starts semantic acceptance from empty support and requires actual rule implications. Preserve that property. Cycles without grounded support must not bootstrap a conclusion. [R4]

Freshness must be checked against the current full read set, including rule versions, parsers, generators, schema files, imports, options, and dependency artifacts. A changed upstream byte invalidates dependent *current* acceptance unless a checked locality/transport theorem covers the change. Historical validity for the old snapshot is retained.

Complete discovery is a separate obligation from sound closure of a supplied inventory. Reconcile the manifest against independent Git/filesystem discovery. Reconcile source-role partitions against actual imports, build targets, owners, generators, documentation extraction, and runner dispatch. Use negative fixtures that deliberately omit an artifact from both an umbrella and a hand-written manifest.

Coverage claims are relative to their declared universe. Require, for a library source universe `U` and role-aware build/replay sets:

```text
EveryLibrarySourceIn(U) = PublicImportClosure(U)
EveryLibrarySourceIn(U) = IndependentlyEnumeratedReplaySet(U)
```

Interpret these equalities after explicitly excluding the root entry point where necessary and separating imported dependencies from owned library sources. Require every validation artifact to be assigned an actual runner and expected-outcome contract. Counts are useful diagnostics, but matching counts without matching identities does not establish equality.

## A.7 Rule registry and enforcement model

Version and register every normative rule. Each rule record MUST contain a stable identifier, version, semantic layer, input types, applicability domain, premise judgments, side conditions, conclusion judgment, exact formal statement when one exists, executable checker identity, soundness-evidence identity or explicit gap, dependencies, failure interpretation, negative/positive controls, compatibility policy, and documentation owner.

Unimplemented enforcement is recorded as unimplemented. A Python linter without a correctness proof remains an executable structural check; do not label it “formally verified” merely because it emits JSON. A reviewed convention remains a convention unless its interpretation and proof bridge have been supplied.

Provide these outcome distinctions:

| Outcome | Meaning |
|---|---|
| `ACCEPT` | The exact named contract was established with the reported evidence and scope. |
| `REJECT` | The proposed certificate/artifact did not meet that contract; this alone need not refute the mathematical target. |
| `UNKNOWN` | The checker did not establish the claim. |
| Operational state | `NOT_RUN`, `BUSY`, `TIMEOUT`, `ERROR`, or `INTERRUPTED`, retained separately from mathematical outcomes. |

No catch-all success, swallowed exception, diagnostic-only warning, or `UNKNOWN` result may satisfy a mandatory gate. A nonapplicable rule requires a justified applicability decision, not an unexplained skip.

Implement rule semantics and reusable soundness results under mathematical locations, using or extending existing modules where appropriate. Proposed new locations, not claims of existing files, include:

```text
GRWTSK/Logic/Certificates/ArtifactDerivation.lean
GRWTSK/Logic/Inference/RuleSoundness.lean
GRWTSK/Logic/ProofChecking/RepositoryConformance.lean
GRWTSK/Logic/ProofChecking/Checks/...
```

Do not introduce `GRWTSK/Standards`, a campaign umbrella, or another nonmathematical subject root. The orchestration program stays in `scripts/`; its reusable mathematical model belongs in the appropriate Lean subject.

## A.8 File structure, documentation, and a single source of authority

Retain the original subject hierarchy and subject-local positive checks, negative controls, and audit sources. Ordinary mathematical modules must never depend on validation fixtures. Do not hide substantive mathematics in an excluded audit module.

Extend existing indexes rather than replacing them with a competing source of truth. An appropriate structure is:

```text
GRWTSK/<Subject>/<Object>/...                         mathematical source
GRWTSK/<Subject>/<Object>/Checks/...                  role-separated validation
GRWTSK.lean                                         generated library entry point
scripts/...                                         orchestration and checks

docs/math-layout.json                               authoritative mathematical placement
docs/reference/documentation-layout.json           existing page registry
docs/reference/rules/...                           proposed rule definitions and schemas
docs/reference/reconstruction.md                   proposed reconstruction contract
docs/reference/trust-boundary.md                   proposed assumptions and threat model
docs/mathematics/<Subject>/<Object>/...             canonical mathematical exposition

evidence/...                                        source-bound durable evidence
```

Generate catalogs, navigational pages, source-role views, dependency graphs, and status displays from authoritative records where possible. Existing historical indexes remain historical. Every generated view must identify its source snapshot and generation rule.

For each maintained mathematical page, require the exact objects and statement, hypotheses and quantifier scope, declaration bindings, interpretation of notation, proof explanation, dependency/open-obligation links, counterexamples or necessity notes where available, attribution and citations, and separate formal-verification and informal-review status.

Use source extraction for formal snippets and statements when feasible. Compile complete Lean examples in the pinned environment; label incomplete examples as illustrative and exclude them from proof acceptance. Detect drift in hypotheses, domains, signs, endpoints, measures, indices, and quantifier order.

A citation is not a formal proof. Free prose may be exact archived text with author/reviewer provenance, but its correspondence to a formal result must be reviewed or established through a specified formal translation. Do not claim arbitrary prose, diagrams, or editorial choices have been kernel-proved merely because their bytes regenerate.

Apply the same classification to README summaries, source docstrings, comments that assert mathematical results, generated navigation, theorem catalogs, scripts that report acceptance, configuration, licenses, and historical evidence. Preserve historical names in quotations and compatibility identifiers when required; remove campaign chronology as the organizing principle of maintained mathematical explanation.

Register all maintained pages in the existing documentation registry. Preserve the base instruction's documentation checks, including optimized-Python hostile controls. A documentation-structure pass must not set proof status to verified.

## A.9 Formalization, trusted statements, and independent checking

Keep exact intended theorem contracts independent of candidate proof implementations. Record all definitions on which the intended meaning depends, not just the final theorem name. During migration compare universes, binders, hypotheses, conclusion, notation/instance resolution, public attributes, and definitions through an explicit correspondence.

A proof of a different theorem with an identical-looking printed statement is not acceptable. Neither an extra assumption nor a redefined underlying object may silently replace the intended contract. Preserve the distinction between a checked implication `P → Q` and a supplied proof of `P`.

Retain fresh source replay at trust zero with fatal warnings and the complete owned-declaration/axiom audit. Preserve the exact existing source-bound generated-runtime exception; any alteration of the exception is a separate trust-policy change. Do not accept `sorry`, new axioms, or unreviewed native-computation trust as a migration shortcut. [R2]

Add independent rechecking of serialized proofs and trusted-statement comparison. Official Lean guidance distinguishes an ordinary successful build, transitive axiom inspection, replay through the kernel, and the stronger route of sandboxed candidate compilation plus trusted-statement comparison and external checking. These are different guarantees. [L2]

For the highest conformance profile defined here, require the stronger route for admitted mathematical claims and for checker soundness theorems on which formal conformance depends. Pin the chosen checker versions and demonstrate compatibility with Lean 4.33.0, the repository's axioms, and generated declarations. Current guidance about `lean4checker`, `comparator`, or external checkers is not proof that a particular tool invocation supports this pinned repository. Unsupported tooling leaves that profile pending; it does not authorize a hidden upgrade or an invented successful run.

A repository-wide claim must cover the full owned-source universe and the transitive inputs required by its admitted claims; a selected-family check must be labeled scoped. For a full-source independently validated release, also reconstruct and rebuild the pinned dependency sources into fresh outputs and record the proof-checking coverage of that closure. Cached objects with known revisions are not a substitute for this evidence. Until this requirement is met, retain the narrower cached-dependency profile and state the unverified source-to-object relation.

Separate candidate execution from validation of its exported proof representation. Validate that representation before an external checker consumes it. Retain a trusted, independently maintained statement/specification environment. Untrusted macros, tactics, package hooks, and build scripts must not execute with credentials or unnecessary access to the host. Lean's official guidance notes that building or importing code can run arbitrary code. Use least-privilege isolation compatible with preservation of the existing main checkout; verification sandboxes do not require destructive Git worktrees. [L2, L4]

Record the trusted computing base honestly: logic, checker implementation, serialization/import bridge, compiler/runtime where native execution is trusted, sandbox, environment, dependency artifacts, and the human specification interpretation. Even independent checking does not remove every assumption or prove the checker system's own absolute reliability.

## A.10 Required adversarial controls

Before claiming enforcement, demonstrate that the controls detect relevant failures for their intended reasons, and that valid neighboring examples still pass.

Required control families include: an uncataloged tracked file and nonignored untracked file; an omitted library module; a role change hiding a theorem; a negative fixture entering the umbrella; an audit-import cycle; a missing source or dependency blob; a symlink escape or changed source during reading; a stale source receipt; a changed rule/schema/generator with an unchanged old result; an unrecorded environment or network input; a byte/Unicode/line-ending reconstruction drift; a wrong constant hidden by notation or instance resolution; a removed hypothesis or changed domain; a custom axiom or placeholder; a mismatched proof owner; an unsupported self-support cycle; an incorrect positive/negative outcome; and a swallowed timeout or busy state.

Add controls that prove a negative test did not fail merely because its import was missing, its toolchain was wrong, or an earlier unrelated command crashed. Exact targeted diagnostics, source-span identity, and a valid positive companion are required.

Test normal and optimized interpreter modes where Python is used. Logical rejection must not depend on assertions that disappear under optimization. Exercise the checker of rule/schema changes against attempts to downgrade mandatory rules.

Tests supply operational evidence. They do not replace soundness proofs for the algorithms or comprehensive specification review. A test suite containing only passing examples does not establish that the acceptance boundary is enforced.

## A.11 Migration sequencing and historical preservation

First freeze a non-destructive inventory and record existing failures and pending states. Bind it to current working bytes and the exact Git state; do not reset the repository to the inspected reference commit.

Next ratify the rule registry, source roles, source-universe definitions, and trust boundary. Implement discovery and role-aware runners before moving tests or audit code under `GRWTSK/`. Use the existing finite-rule model only after reviewing its hypotheses and adapters. Add source-discovery/authentication obligations rather than asserting them away.

Then migrate in dependency-coherent units. Maintain old-to-new module mappings and declaration-level split/merge correspondences. Preserve namespace compatibility without forbidden import shims. Capture exact source changes and avoid unrelated theorem rewriting. If concurrent edits collide, retain both variants, identify the collision, and do not overwrite the newer state.

Then rebuild generated views, documentation bindings, and current manifests. Preserve old manifests and receipts with their original scope. Do not rewrite a historical “failed” or “pending” event to match the current preferred narrative.

Finally execute reconstruction, formal replay, independent checking where required, documentation validation, and hostile controls. Produce a new evidence package for the resulting frozen snapshot. Restoring historical evidence is not fresh execution; rebinding file paths is not mathematical acceptance.

The public package must include enough permitted inputs and instructions for the stated audience to repeat its claims. Retain inaccessible private evidence as private and label any dependent public claim as externally blocked. Do not delete private/local histories just because they are excluded from the release.

Preserve the existing no-push/no-publication boundary. This addendum does not itself authorize changing remote branch protection, installing automation, granting source access, contacting reviewers, or publishing material.

## A.12 Acceptance profiles and final gates

Report a vector of statuses rather than a single unqualified “PASS.” At minimum report inventory coverage, canonical placement, source-role isolation, byte restoration, deterministic generation, binding/meaning coverage, contract preservation, kernel replay, axiom audit, checker soundness, trusted-statement comparison, independent checker coverage, documentation correspondence, evidence freshness, and repeatability.

Distinguish at least these cumulative profiles:

| Profile | Required evidence |
|---|---|
| Organized | Complete scoped inventory, correct role isolation, reviewed mathematical placement, synchronized navigation and mappings |
| Reconstructible | Organized plus available exact inputs, lossless source restoration, declared deterministic recipes, and successful reproduction of their specified outputs |
| Formally checked | Reconstructible plus preserved trusted formal contracts, fresh kernel/axiom audits, and checked soundness for claims labeled formally enforced |
| Independently validated | Formally checked plus trusted-statement comparison outside candidate influence, independently implemented proof checking within supported scope, and independently repeated reconstruction |

The full target of this addendum is the final profile for the declared release scope. A lower attained profile remains useful but must be named accurately. A result can be kernel-checked while the release's byte reconstruction or documentation correspondence remains pending; do not flatten those distinct states.

For any release claiming full conformance, require all in-scope artifacts to be classified and reconstructed, all generated-artifact contracts to be satisfied, every admitted mathematical claim to have the appropriate checked derivation, all relevant policies to have their enforcement evidence, no ungrounded rule cycle, all mandatory tests to have their intended outcomes, complete current source/rule bindings, and an explicit residual-assumptions statement.

Expected-negative fixtures are successful controls when they fail in the intended way. Open mathematical obligations may remain in a conforming repository if accurately represented and never counted as proved conclusions. Organizational completion does not establish an unresolved number-theoretic estimate or the Riemann hypothesis.

Missing tools, missing inputs, unsupported checker features, interrupted runs, stale receipts, incomplete discovery, and absent independent review must remain visible as blockers for the applicable profile. Do not let a documentation generator infer success from a directory name or the existence of a receipt file.

## A.13 Implementation deliverables

Provide an updated authoritative layout index; a versioned rule registry and schema; an all-artifact inventory; a reconstruction basis and derivation catalog; declaration/binding/API correspondence; role-aware build/replay/control sets; formally stated and checked core rule soundness results where claimed; documentation/source bindings; preserved historical evidence; adversarial controls; source-bound replay and reconstruction receipts; and the final per-profile conformance report.

Proposed interfaces such as `check_repository_rules`, `reconstruct_snapshot`, `audit_symbol_coverage`, or `verify_repository_conformance` are **deliverables to implement**, not existing commands. Publish actual command syntax only after implementation and test it in the pinned environment. Reuse the base instruction's established layout, trust, family, and documentation entry points rather than silently replacing their protections.

Implementation is not complete merely because this document and its schema are present. A rule that has no enforcing implementation or proof evidence must visibly retain that gap. Rules governing the checkers themselves require the same accountable source, versioning, tests, and trust disclosure as other rules.

## A.14 Public rationale attached to the instruction

**Why retain the existing mathematical taxonomy?** Reuse should depend on what a theorem states, not the project that motivated it. A general analytic estimate should remain importable independently of an arithmetic application. The inspected repository already commits to this principle, so replacing it would create unnecessary migration risk. [R1]

**Why separate source role from subject?** A subject-local negative control can intentionally be ill-typed. Its correct placement does not make it a theorem or a public import. Conflating those dimensions either breaks the library build or encourages weakening the negative test. [R2, R3]

**Why introduce a literal basis?** General rules cannot select a unique author's sentence or program among all conforming ones. Explicit retained inputs solve that underdetermination honestly. The stronger, nontrivial guarantees are lossless reconstruction, provenance, exact formal meaning, and checked semantic claims—not an assertion that the source sprang from rules without input.

**Why not rely on hashes?** A digest binds a receipt to candidate bytes but does not store those bytes, explain an identifier, establish input availability, or prove a theorem. Integrity, availability, interpretation, and proof are different obligations.

**Why use grounded rule derivations?** The existence of a mutually referential group of certificates must not manufacture evidence. The current finite-rule formalization already makes the essential distinction between grounded derivability and self-support; the new work is to connect it correctly to real artifacts, input discovery, and rule execution. [R4]

**Why require complete discovery separately?** A perfectly sound checker can validate an incomplete list. The substantive lesson from BB5 is that correctness of individual classification methods must be combined with coverage of the relevant cases. A successful subset of repository modules is not the entire library. [B1–B3]

**Why protect intended statements?** A proof can be valid for the wrong proposition after a changed definition, notation, or implicit instance. The official Lean validation guidance treats theorem meaning and proof validity as separate issues. Trusted statements, elaborated comparisons, and independent checking address different parts of that problem. [L2]

**Why distinguish policy from theorem?** A folder classification can be approved by a documented convention without being a theorem of mathematics. An author's explanatory paragraph can be faithful without being generated by a formal renderer. Recording those distinctions avoids turning administrative authority into logical authority.

**Why allow unknown and pending results?** A failed search, timeout, or absent tool is not evidence of the opposite mathematical statement. Coq-BB5's sound decider interface makes an explicit place for an unknown result. A reliable admission workflow needs the same refusal to turn missing evidence into a conclusion. [B1]

**Why require independent verification for the highest profile?** Repeating the same implementation can repeat the same defect. A separately checked export and a trusted target statement reduce common-mode risk while leaving their residual assumptions explicit. This does not make the project infallible, but it gives a precise and testable improvement over build success alone. [L2, L4]

**Why preserve failures and historical scopes?** Reconstruction concerns what actually happened and what current bytes establish. Erasing failed attempts or attaching old success to new bytes destroys that distinction. A stronger present result should add evidence, not rewrite the past. [R1, R2]

## Appendix A — Minimum rule catalog to implement

The following identifiers describe required contracts. They are not assertions that implementations or proofs already exist.

| Rule ID | Contract |
|---|---|
| FOUNDATION.001 | Bind policy version, input universe, logic, toolchain, checker, dependencies, and explicit trust assumptions. |
| INVENTORY.001 | Reconcile artifact identities with independent scoped discovery; report omissions and unexpected additions. |
| BYTES.001 | Restore each literal/input artifact losslessly from available retained bytes. |
| GENERATION.001 | Regenerate each declared generated artifact from complete pinned inputs and reproduce the specified bytes. |
| ORIGIN.001 | Cover every artifact byte range with a noncircular origin or generation derivation. |
| BINDING.001 | Resolve source constructs to their declared meaning under the pinned environment and report mapping gaps. |
| LAYOUT.001 | Enforce approved subject/object paths without campaign umbrellas. |
| ROLE.001 | Partition library, controls, audits, generators, data, prose, and historical evidence without census escape. |
| COVERAGE.001 | Reconcile actual import/build/replay/runner sets by identity, not merely count. |
| CONTRACT.001 | Preserve intended elaborated mathematical interfaces under reviewed migration correspondence. |
| PROOF.001 | Kernel-check admitted proofs and enforce the exact allowed axiom policy. |
| RULE.001 | Require real side-condition and soundness evidence for formally admitted rule instances. |
| GROUNDING.001 | Admit conclusions only through grounded derivations, not unsupported cycles. |
| CONTROL.001 | Verify positive and expected-negative outcomes at the intended source locations for intended reasons. |
| DOCUMENTATION.001 | Bind maintained claims and examples to current formal sources while preserving informal/historical status. |
| FRESHNESS.001 | Invalidate current claims affected by changes to any relevant input, rule, tool, or schema. |
| INDEPENDENCE.001 | Compare trusted statements and recheck exports outside candidate influence with recorded independent coverage. |
| HISTORY.001 | Preserve prior receipts and source variants without rewriting their recorded acceptance scope. |
| RELEASE.001 | Emit only the conformance profile actually supported by all mandatory current gates. |

## Appendix B — Minimum record contracts

These are field requirements, not a ready-to-run file format. Implement strict versioned schemas, define unknown-field behavior, reject duplicate/conflicting identities, and supply validated fixtures before treating records as executable contracts.

```text
RuleRecord
  schema_version, rule_id, rule_version, layer
  input_types, applicability, premises, side_conditions, conclusion
  semantic_definition, checker_artifacts, execution_mode
  soundness_proof_or_gap, dependencies, positive_controls, negative_controls
  failure_interpretation, compatibility, documentation_binding

ArtifactRecord
  artifact_id, path_bytes, file_kind, mode, role, subject, object
  exact_content_identity, size, encoding_if_text, origin
  reproduction_mode, basis_inputs, derivation_or_recipe, environment
  source_ranges_or_lossless_map, declared_read_set, consumers
  availability_scope, license, attribution, current_status_vector

ClaimRecord
  claim_id, kind, source_snapshot, defining_environment
  formal_target_or_informal_text, hypotheses, interpretation_binding
  proof_or_evidence, rule_derivation, unresolved_premises
  verification_vector, documentation_consumers, freshness_inputs

ReceiptRecord
  receipt_schema, checked_input_snapshot, policy_and_rule_versions
  checker_and_environment_identities, commands_and_execution_modes
  per_contract_outcomes, operational_states, coverage_identities
  logs_and_export_identities, dependency_reuse, residual_assumptions
  prior_receipt_links, declared_audience, observation_identity
```

Do not use placeholders in an acceptance record. Empty required fields mean incomplete evidence. Receipt existence, record signature, and JSON schema validity are not interchangeable with mathematical truth.

## Sources and inspection limits

Repository reads were read-only. The base migration attachment was inspected locally. No Lean build, source replay, independent checker, hostile test suite, or byte-reconstruction implementation was executed while preparing this addendum. Statements about existing functionality are based on inspected source/documentation, not fresh successful execution.

[R1] `grwtsk/math`, inspected commit above: `AGENTS.md`, `docs/reference/source-layout.md`, `docs/math-layout.json`, and `README.md`.

[R2] Same snapshot: `docs/reference/verification-interfaces.md`, `scripts/check_math_trust.py`, `checks/MathTrustAudit.lean`, and `scripts/check_ordered_product_gauge.py`.

[R3] Same snapshot: `scripts/check_math_layout.py`, `GRWTSK.lean`, `lakefile.toml`, `lean-toolchain`, and the source-role migration issue documented in the base instruction.

[R4] Same snapshot: `GRWTSK/Logic/Inference/FiniteRuleSystems.lean`, Git blob `61335771bba1c7d76fbf2b00d875ea9ab888ea74`. The formal development's own stated limits include complete discovery and authenticated revision resolution.

[B1] Coq-BB5: `CoqBB5/BB5/Deciders/Deciders_Common.v`, retrieved Git blob `5056a23b6eb8191fee5ea5a391672a3e50329eca`; in particular `HaltDecider_WF` and `HaltDecider_cons_spec`. Also `BB5_Deciders_Pipeline.v`, retrieved blob `04e9f6c0db6d892a2406e21bcfae7a941f71f922`. These files were read through the GitHub connection, not compiled. The repository main reference read during inspection was `9142e219229baf2245d3f70851947230ea28a318`; the blob identities are the authoritative identities of the retrieved file bodies.

[B2] Coq-BB5: root README, retrieved blob `bd4c70c7b5fe14fd2d9ab487e45e617a37a0b580`, and `CoqBB5/BB5/README.md`, inspected discussion of proof structure, decider/verifier contracts, sporadic cases, and the reported axiom. The proof uses Coq; this addendum neither imports nor recompiles it.

[B3] The bbchallenge Collaboration, *Determination of the fifth Busy Beaver value*, arXiv:2509.12337v1, 15 September 2025, sections on proof structure and deciders. This specific version was consulted; no claim of inspecting the latest paper revision is made.

[L1] Official Lean Language Reference, *The Type System*: terms, elaboration, and reconstructed typing derivations.

[L2] Official Lean Language Reference, *Validating a Lean Proof*: meaning versus proof validity, axioms, replay, trusted-statement comparison, external checking, and residual assumptions. The current online reference was consulted; a direct version-4.33.0 page retrieval did not succeed. Exact tool compatibility remains an implementation obligation.

[L3] Reproducible Builds project, *Definitions*: reproduction is relative to specified sources, environment, instructions, and output artifacts.

[L4] Official Lean FAQ: trusted computing base and execution risk from importing/building code.

Reference locators:

```text
https://github.com/grwtsk/math/tree/0029a80f5a86418cb62c658f3bbdaa3aad6c6285
https://github.com/ccz181078/Coq-BB5
https://arxiv.org/html/2509.12337v1
https://lean-lang.org/doc/reference/latest/The-Type-System/
https://lean-lang.org/doc/reference/latest/ValidatingProofs/
https://lean-lang.org/faq/
https://reproducible-builds.org/docs/definition/
```
