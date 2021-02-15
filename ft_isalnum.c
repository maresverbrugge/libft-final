/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_isalnum.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: mverbrug <mverbrug@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2020/11/01 17:19:11 by mverbrug      #+#    #+#                 */
/*   Updated: 2021/01/29 16:49:25 by mverbrug      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/*
** The isalnum() function tests for any character for which
** isalpha() or isdigit() is true.
*/

int	ft_isalnum(int c)
{
	return (ft_isdigit(c) || ft_isalpha(c));
}
