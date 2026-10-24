# Verification target: GRWTSK.Topology.Induction.Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "599c2d475b8c2f448e42308fb726c7d11cb63afc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/index.md) · [Full source](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `599c2d475b8c2f448e42308fb726c7d11cb63afc`.

Source path: `GRWTSK/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [GoodProducts.P0](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/declarations/goodproducts-p0--a1b6c278993a0fccc83f6f5f.md) | 65 | `result-track:a1b6c278993a0fccc83f6f5f5919db04aa45d5394d9b6e48932a9f6b093a66b7` |
| 2 | `theorem` | [GoodProducts.Plimit](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/declarations/goodproducts-plimit--0bbc896b5a398d4e37215347.md) | 75 | `result-track:0bbc896b5a398d4e372153479501b2a10bc7f7de317fcffc3f665bf5fbfa243e` |
| 3 | `theorem` | [GoodProducts.linearIndependentAux](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/declarations/goodproducts-linearindependentaux--e0557cc33b4e3b9f17e3fb27.md) | 84 | `result-track:e0557cc33b4e3b9f17e3fb27987c5e1c2227c0a9c3a7c5474c04d9aaccf7e04d` |
| 4 | `theorem` | [GoodProducts.linearIndependent](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/declarations/goodproducts-linearindependent--8de91476abacc2634d0180d9.md) | 97 | `result-track:8de91476abacc2634d0180d939d1b4ac07f3881b1252952399a3115c442b2fdc` |
| 5 | `def` | [GoodProducts.Basis](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/declarations/goodproducts-basis--c6c29078e6315a2a801b077b.md) | 104 | `declaration-track:c6c29078e6315a2a801b077ba5f2f73c3965a95d0cc53fde1b7d79898739b334` |
| 6 | `theorem` | [Nobeling_aux](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/declarations/nobeling-aux--f599cdf607941d56c4f150b5.md) | 117 | `result-track:f599cdf607941d56c4f150b5ec13810d54ae2a6562abc0db6931022cd4dca011` |
| 7 | `def` | [Nobeling.ι](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/declarations/nobeling--a3fcacc007d7ad72616a90ee.md) | 128 | `declaration-track:a3fcacc007d7ad72616a90eed385db7288b36e39512097fc6b6eee9a0ad5e2db` |
| 8 | `theorem` | [Nobeling.isClosedEmbedding](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/declarations/nobeling-isclosedembedding--9b5aa4e504fcfb6b84f4c36d.md) | 131 | `result-track:9b5aa4e504fcfb6b84f4c36da85e51721fd7d53c2ee9868ea829d001010340a4` |
| 9 | `instance` | [LocallyConstant.freeOfProfinite](../../../../mathematics/Topology/Induction/Variant536671d72663581c7ed01c7bde68e6bd1bff2baf98432837b1a49151a525b43a.lean/declarations/locallyconstant-freeofprofinite--885811b19fdc9c6a8ab635df.md) | 162 | `declaration-track:885811b19fdc9c6a8ab635dff1035613cca347332b3340413829e8db8dcd8e75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
