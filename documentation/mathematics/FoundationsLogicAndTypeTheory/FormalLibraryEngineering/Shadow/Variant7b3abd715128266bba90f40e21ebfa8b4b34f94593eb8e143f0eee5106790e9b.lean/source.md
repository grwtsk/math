# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Shadow.Variant7b3abd715128266bba90f40e21ebfa8b4b34f94593eb8e143f0eee5106790e9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed090bd6fe95eff327628bbd447469fddd6cb98a` · SHA-256 `7b3abd715128266bba90f40e21ebfa8b4b34f94593eb8e143f0eee5106790e9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Mutation.Obstruction

/-!
# Immutable shadow mutation

The pure construction returns the original canonical snapshot unchanged and a
separate counterfactual state.  It exposes no operation that writes the
canonical carrier.
-/

namespace Mathematics.Mutation

structure ShadowMutationResult
    {State : Type}
    (snapshot : ImmutableSnapshot State) where
  canonical : ImmutableSnapshot State
  shadowState : State
  mutationProgramId : StableId
  canonical_unchanged :
    canonical = snapshot

def applyShadowMutation
    {State : Type}
    (snapshot : ImmutableSnapshot State)
    (program : MutationProgram State) :
    ShadowMutationResult snapshot where
  canonical := snapshot
  shadowState := program.mutate snapshot.state
  mutationProgramId := program.programId
  canonical_unchanged := rfl

theorem shadow_mutation_preserves_canonical
    {State : Type}
    (snapshot : ImmutableSnapshot State)
    (program : MutationProgram State) :
    (applyShadowMutation snapshot program).canonical = snapshot :=
  (applyShadowMutation snapshot program).canonical_unchanged

end Mathematics.Mutation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7326a77c415a5d7321d5a56b4302d3bd2af0424f6d9f0ddb382e533255d9ce3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shadow/Variant7b3abd715128266bba90f40e21ebfa8b4b34f94593eb8e143f0eee5106790e9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
