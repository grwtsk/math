# Verification target: Singleton Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0faa8ec64c7e962130bf8f28daf8fffd071f400b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SingletonPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SingletonPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0faa8ec64c7e962130bf8f28daf8fffd071f400b`.

Source path: `GRWTSK/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RingHom.adjoinAlgebraMap](../../../../CommutativeAlgebra/SingletonPublic.lean/declarations/ringhom-adjoinalgebramap.md) | 31 | `declaration-track:da5b40ebb2c04843ab9f36b3af8203e8319a20c1b35a6f35b3a3d6869f229648` |
| 2 | `theorem` | [RingHom.adjoinAlgebraMap_apply](../../../../CommutativeAlgebra/SingletonPublic.lean/declarations/ringhom-adjoinalgebramap-apply.md) | 39 | `result-track:5a3af3dc4b410ba41c68d2e9a4afb8840a0e454c39024fe8ee94e7532bd0d958` |
| 3 | `theorem` | [RingHom.adjoinAlgebraMap_surjective](../../../../CommutativeAlgebra/SingletonPublic.lean/declarations/ringhom-adjoinalgebramap-surjective.md) | 42 | `result-track:44f80297e88ff175f2ce2c213a42be997d0b641cfbc47a0b245654922b093d18` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SingletonPublic.lean/declarations/instance-source-edition-2.md) | 48 | `declaration-track:ecc48dbfa8fe256239aaad83a8cb95cec7d57d49f5ab8cab9c7cb0fc1eb472cc` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/SingletonPublic.lean/declarations/instance.md) | 51 | `declaration-track:5207c564c2dbc5a673fb57b0413a12f57d9bfbf6bc2acfc1cb85256d2ace80ee` |
| 6 | `def` | [RingHom.adjoinAlgebraMapEquiv](../../../../CommutativeAlgebra/SingletonPublic.lean/declarations/ringhom-adjoinalgebramapequiv.md) | 55 | `declaration-track:2da312698118d924bc7de59fdceaf3ac5f885ab6db0b26ca9b00708606a477e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=559f216e13e7dcc6a39c40ccbbe64dc81f9a0274e1b59444c1ef6414665d954b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean","GRWTSK/_verification/specifications/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
