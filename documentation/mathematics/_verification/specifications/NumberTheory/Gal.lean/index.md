# Verification target: Gal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef2d433971d719feeb35931bfdcf576ae9bc9659",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/Gal.lean/index.md) · [Full source](../../../../NumberTheory/Gal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef2d433971d719feeb35931bfdcf576ae9bc9659`.

Source path: `GRWTSK/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PolynomialGaloisGroup` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [autToPow_injective](../../../../NumberTheory/Gal.lean/declarations/auttopow-injective.md) | 53 | `result-track:2083e0ba234b4d0ffe0e341339ac61f9d435afe377f26443cc4a91a739e4b0ca` |
| 2 | `def` | [Aut.commGroup](../../../../NumberTheory/Gal.lean/declarations/aut-commgroup.md) | 82 | `declaration-track:daef642d874d82f8617358bccd60d13bb9d2c7b9af475afb1059c0e6d8662417` |
| 3 | `def` | [autEquivPow](../../../../NumberTheory/Gal.lean/declarations/autequivpow.md) | 91 | `declaration-track:1a351b9e4fb9919270e8c19c08bfbba927b434f28d6694c2a16509289b30f700` |
| 4 | `def` | [fromZetaAut](../../../../NumberTheory/Gal.lean/declarations/fromzetaaut.md) | 135 | `declaration-track:8b5edab027071ca1aa73561b8d8c2c9492f387992be41f7c51eec93f8fa3e2e8` |
| 5 | `theorem` | [fromZetaAut_spec](../../../../NumberTheory/Gal.lean/declarations/fromzetaaut-spec.md) | 141 | `result-track:bb642ebd29e40d97d9d5b84bca3e599ce300c6fd1ac83ce15d50ad118b42c68c` |
| 6 | `def` | [galCyclotomicEquivUnitsZMod](../../../../NumberTheory/Gal.lean/declarations/galcyclotomicequivunitszmod.md) | 159 | `declaration-track:9712791fa078c96e89ee5103f8d8a54b623c5a8ab49961dd71ac217d6f9c4a68` |
| 7 | `def` | [galXPowEquivUnitsZMod](../../../../NumberTheory/Gal.lean/declarations/galxpowequivunitszmod.md) | 167 | `declaration-track:3eee88d76c126ca6c6882f208c2f15d90d6eabd605a2b41d7504398d4f758ec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd63ab93b46e34b3b385ef8517f78142c7ec1bc96350d0408699f37b769661f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean","GRWTSK/_verification/specifications/Algebra/Gal/Variant2a4807ee46d2ade8cc0f5c39ae0036195f12074ec3934ae34803a2c692e9997d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
