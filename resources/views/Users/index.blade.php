@extends('layouts.app')
@section('content')

    <h1>List of users</h1>
  
    @if(empty($users))
  
    <div class="alert alert-warning">
        The list of users is empty
    </div>
    @else
    <div class="table-responsive">
        <table class="table table-striped">
            <thead class="thead-light">
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Admin Since</th>
                <th>Action</th>
            </thead>
            <tbody>
                @foreach($users as $user)
                <tr>
                <td>{{$user->id}}</td>
                <td>{{$user->name}}</td>
                <td>{{$user->email}}</td>
                <td>{{optional($user->admin_since)->diffForHumans() ?? 'Never'}}</td>
                <td>
                    <form method="POST" class="d-inline" action="{{route('users.admin.toggle',['user' => $user->id])}}">
                        @csrf
                       
                        <button type="submit" class="btn btn-link">{{$user->isAdmin() ? 'Remove' : 'Make'}} Admin</button>
                    </form>
                </td>
                </tr>
                @endforeach
            </tbody>

        </table>
    </div>
    @endif
@endsection