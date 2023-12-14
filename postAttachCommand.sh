if [ ! -d ".vscode" ]; then
  ln -s $HOME/personal/.vscode /workspace/.vscode
fi

if [ ! -d $HOME/data ]; then
  ln -s $HOME/personal/data $HOME/data
fi

if [ ! -d "/workspace/data" ]; then
  ln -s $HOME/personal/data /workspace/data
fi

if [ ! -d "/workspace/skunkworks" ]; then
  ln -s $HOME/personal/skunkworks /workspace/skunkworks
fi

if [ ! -d "/workspace/github/iamsupercb" ]; then
  mkdir -p /workspace/github/iamsupercb
fi

case $IamSuperCBPersona in
  FOS)
    if [ ! -d "/workspace/github/iamsupercb/typescript" ]; then
      git clone git@github.com:IamSuperCB/toil.typescript /workspace/github/iamsupercb/typescript
    fi
    if [ ! -d "/workspace/github/iamsupercb/python" ]; then
      git clone git@github.com:IamSuperCB/toil.python /workspace/github/iamsupercb/python
    fi
    if [ ! -d "/workspace/github/iamsupercb/dotnet" ]; then
      git clone git@github.com:IamSuperCB/dotnet.dotnet /workspace/github/iamsupercb/dotnet
    fi
    ;;
  TOIL)
    if [ ! -d "/workspace/github/iamsupercb/toil" ]; then
      git clone git@github.com:IamSuperCB/toil.git /workspace/github/iamsupercb/toil
    fi
    ;;
esac

if [ ! -d "/workspace/github/azuread" ]; then
  mkdir -p /workspace/github/azuread
fi
if [ ! -d "/workspace/github/azuread/microsoft-authentication-library-for-js" ]; then
  git clone git@github.com:AzureAD/microsoft-authentication-library-for-js.git /workspace/github/azuread/microsoft-authentication-library-for-js
fi
