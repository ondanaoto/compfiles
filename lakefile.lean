import Lake

open Lake DSL

package compfiles where
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩, -- pretty-prints `fun a ↦ b`
    ⟨`autoImplicit, false⟩,
    ⟨`relaxedAutoImplicit, false⟩
  ]

@[default_target]
lean_lib ProblemExtraction

@[default_target]
lean_lib Compfiles

@[default_target]
lean_exe buildWebpage where
  root := `scripts.buildWebpage
  supportInterpreter := true

@[default_target]
lean_exe extractProblems where
  root := `scripts.extractProblems
  supportInterpreter := true

@[default_target]
lean_exe checkSolution where
  root := `scripts.checkSolution
  supportInterpreter := true

@[default_target]
lean_exe tryTactic where
  root := `scripts.tryTactic
  supportInterpreter := true

require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "7aeba51a8ee90d2ac46d07ed53f0d220757e0679"
